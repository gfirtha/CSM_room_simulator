classdef Wall
    %properties of a wall
    properties
        A
        B
        C
        D
     %Ax+Bx+Cz+D=0!
        R = 1;
        redA
        redB
        redC
        redD
     %redukált normálforma paraméterei inside check-hez
    end
    methods

        function obj = Wall (PointList, r)
            if numel(PointList) < 9
                disp('Kevés paraméter a fal síkjának számításához');
            end
            
            x1=PointList(1,1);
            y1=PointList(1,2);
            z1=PointList(1,3);
            
            x2=PointList(2,1);
            y2=PointList(2,2);
            z2=PointList(2,3);
            
            x3=PointList(3,1);
            y3=PointList(3,2);
            z3=PointList(3,3);

            obj.A = y1*(z2-z3) + y2*(z3-z1) + y3*(z1-z2);
            obj.B = -x1*(z2-z3) - x2*(z3-z1) -x3*(z1-z2) ;
            obj.C = x1*(y2-y3) + x2*(y3-y1) + x3*(y1-y2);
            obj.D = x1*(y3*z2-y2*z3) + y1*(x2*z3 - x3*z2) + z1*(x3*y2-x2*y3);
            
            norm=sqrt(obj.A^2+obj.B^2+obj.C^2);
            obj.redA= obj.A/norm;
            obj.redB= obj.B/norm;
            obj.redC= obj.C/norm;
            obj.redD= obj.D/norm;
            
            obj.R = r;
        end
        function ParamVector = getWallParameters(obj)
           ParamVector = [obj.A obj.B obj.C obj.D obj.R obj.redA obj.redB obj.redC obj.redD]; 
        end
    end
end

