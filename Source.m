classdef Source
    %properties of a source
    properties
        valid
        X0
        Y0
        Z0
        SRCFACTOR
        DIRX
        DIRY
        DIRZ
        GENERATION
    end
    methods
        
        function obj = Source(isvalid, x0, y0, z0, srcfactor, dirx, diry, dirz, generation)
        obj.valid = isvalid;
        obj.X0 = x0;
        obj.Y0 = y0;
        obj.Z0 = z0;
        obj.SRCFACTOR = srcfactor;
        obj.DIRX = dirx;
        obj.DIRY = diry;
        obj.DIRZ = dirz;
        obj.GENERATION=generation;
        end
        
        function NewMirrorSource = CreateMirrorSource(obj,wall)
            %t�kr�z�s meg v�gtelen kil�p�si felt�tel
            %feltehetj�k, hogy a param�ter�l kapott forr�s �rv�nyes
            WallParameters = getWallParameters(wall);        
            
            A=WallParameters(5);
            B=WallParameters(6);
            C=WallParameters(7);
            D=WallParameters(8);
            R=WallParameters(9);
            %Talppont meghat�roz�sa: P1(x1,x2,x3) vet�lete P(x,y,z)

            FootPointx=(B^2+C^2)*obj.X0 - A*(D+B*obj.Y0+C*obj.Z0);    %x=(b^2+c^2)x1-a(d+by1+cz1)
            FootPointy=(A^2+C^2)*obj.Y0 - B*(D+A*obj.X0+C*obj.Z0);    %y=(a^2+c^2)y1-b(d+ax1+cz1)
            FootPointz=(A^2+B^2)*obj.Z0 - C*(D+A*obj.X0+B*obj.Y0);    %z=(a^2+b^2)z1-c(d+ax1+by1)
            
            MirrorPointX=2*FootPointx-obj.X0;    %Pmirror=2*P1-P
            MirrorPointY=2*FootPointy-obj.Y0;
            MirrorPointZ=2*FootPointz-obj.Z0;
            
            %Ir�nykarakterisztika f�ir�ny t�kr�z�se ugyanezzel a m�dszerrel
            %Mivel csak egy ir�ny, mindegy hogy a vektort t�kr�zz�k, vagy a
            %v�gpontj�t
            
            DirectivityFootPointx=(B^2+C^2)*obj.DIRX - A*(D+B*obj.DIRY+C*obj.DIRZ);    %x=(b^2+c^2)x1-a(d+by1+cz1)
            DirectivityFootPointy=(A^2+C^2)*obj.DIRY - B*(D+A*obj.DIRX+C*obj.DIRZ);    %y=(a^2+c^2)y1-b(d+ax1+cz1)
            DirectivityFootPointz=(A^2+B^2)*obj.DIRZ - C*(D+A*obj.DIRX+B*obj.DIRY);    %z=(a^2+b^2)z1-c(d+ax1+by1)
            
            MirrorDirectivityX=2*DirectivityFootPointx-obj.DIRX;    %Pmirror=2*P1-P
            MirrorDirectivityY=2*DirectivityFootPointy-obj.DIRY;
            MirrorDirectivityZ=2*DirectivityFootPointz-obj.DIRZ;
           
            %Reflexi�s t�nyez�vel val� szorz�s
            MirrorSRCFactor=obj.SRCFACTOR*R;
            
            %Alapvet�en �rv�nyes az �j forr�s, kap�sb�l l�trehoz�s ut�n
            %lefut az �rv�nyess�get ellen�rz� f�ggv�ny
            NewSourceValid=1;
            
            NewMirrorSource = Source(NewSourceValid, MirrorPointX, MirrorPointY, MirrorPointZ,MirrorSRCFactor,MirrorDirectivityX,MirrorDirectivityY,MirrorDirectivityZ, obj.GENERATION+1);
        end
        
    end
end