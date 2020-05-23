classdef Room
   properties
       NumWalls
       WallArray = [];
       NumSources
       SourceArray = [];
       P
       Q
       Order
       dmax
       SRCFACT_min
   end
   methods
       function obj = Room(numwalls, wallarray, numsources, sourcearray, p, q, order, dmax, srcfactmin)
       obj.NumWalls = numwalls;
       obj.WallArray =  wallarray;
       obj.NumSources = numsources;
       obj.SourceArray = sourcearray;
       obj.P = p;
       obj.Q = q;
       obj.Order = order;
       obj.dmax = dmax;
       obj.SRCFACT_min = srcfactmin;
       end
       function SourceIsValid(obj,j,k)
            %kilépési feltételek a pont érvényességére
            
            %#1 Az MS a fal külsõ oldalán található; j. forrás, k. fal
            
            IsInside = sign(obj.WallArray(k).redA*obj.SourceArray(j).X0 + obj.WallArray(k).redB*obj.SourceArray(j).Y0 + obj.WallArray(k).redC*obj.SourceArray(j).Z0 + obj.WallArray(k).redD);
            if IsInside > 0
                   obj.SourceArray(j).valid=0;    
            end
            
            %#3 Az MS a szoba belsõ terébe esik
            
            for n=1:obj.NumWalls
                IsInside = sign(obj.WallArray(n).redA*obj.SourceArray(j).X0 + obj.WallArray(n).redB*obj.SourceArray(j).Y0 + obj.WallArray(n).redC*obj.SourceArray(j).Z0 + obj.WallArray(n).redD);
                if IsInside < 0 %kívül esik bármelyik falon
                    break 
                elseif n==obj.NumWalls
                    obj.SourceArray(j).valid=0;
                end
            end
            
            %#4 Az MS egybeesik a forrással - ez rekurziót eredményezne
            
            if isequal([obj.SourceArray(j).X0 obj.SourceArray(j).Y0 obj.SourceArray(j).Z0],[obj.Q.X0 obj.Q.Y0 obj.Q.Z0])
                   obj.SourceArray(j).valid=0;
            end
            
            %#5 A Source Factor abszolut értéke túl kicsi
            
            SRCmax = abs(obj.SourceArray(j).SRCFACTOR);
            if SRCmax < obj.SRCFACT_min
                   obj.SourceArray(j).valid=0;
            end
            
            %#6 A forrás túl messze van
            DIST=norm([obj.SourceArray(j).X0 obj.SourceArray(j).Y0 obj.SourceArray(j).Z0]-[obj.P.X0 obj.P.Y0 obj.P.Z0]);
            if DIST > obj.dmax
                   obj.SourceArray(j).valid=0;
            end

       end
       function NewRoom = CalculateMSList(obj)
            for i=0:obj.Order-1 %Hogy a forrással kezdje, és Order számú ciklus legyen
               for j=1:obj.NumSources
               if obj.SourceArray(j).GENERATION==i
                   for k=1:obj.NumWalls
                   if obj.SourceArray(j).valid==1
                            obj.SourceArray(obj.NumSources+1)=obj.SourceArray(j).CreateMirrorSource(obj.WallArray(k));
                            obj.NumSources=obj.NumSources+1;
                            obj.SourceIsValid(j,k);
                   end
                   end
               end
               end
            end
            NewRoom = Room(obj.NumWalls,obj.WallArray,obj.NumSources,obj.SourceArray,obj.P,obj.Q,obj.Order,obj.dmax,obj.SRCFACT_min);
       end
       function ret = GetCoordinates(obj,j)
           ret=[obj.SourceArray(j).X0 obj.SourceArray(j).Y0 obj.SourceArray(j).Z0];
       end
   end
end