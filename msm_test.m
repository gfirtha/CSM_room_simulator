%Egy konkrét terem implementálása, és a MSM tesztelése
%GIT Teszt
for i=1:1 %Pontlisa
Wall_1_point_1 = [-100 0 25];
Wall_1_point_2 = [100 0 25];
Wall_1_point_3 = [200 100 0];
Wall_1_point_4 = [-200 100 0];

Wall_2_point_1 = [-200 100 0];
Wall_2_point_2 = [200 100 0];
Wall_2_point_3 = [250 150 0];
Wall_2_point_4 = [-250 150 0];

Wall_3_point_1 = [-250 150 0];
Wall_3_point_2 = [250 150 0];
Wall_3_point_3 = [150 600 75];
Wall_3_point_4 = [-150 600 75];

Wall_4_point_1 = [-150 600 75];
Wall_4_point_2 = [150 600 75];
Wall_4_point_3 = [150 600 162.5];
Wall_4_point_4 = [125 600 175];
Wall_4_point_5 = [-125 600 175];
Wall_4_point_6 = [-150 600 162.5];
Wall_4_point_7 = [-150 600 75];

Wall_5_point_1 = [125 150 225];
Wall_5_point_2 = [-125 150 225];
Wall_5_point_3 = [-125 375 200];
Wall_5_point_4 = [125 375 200];

Wall_6_point_1 = [125 100 225];
Wall_6_point_2 = [-125 100 225];
Wall_6_point_3 = [-125 150 225];
Wall_6_point_4 = [125 150 225];

Wall_7_point_1 = [100 0 175];
Wall_7_point_2 = [-100 0 175];
Wall_7_point_3 = [-125 100 225];
Wall_7_point_4 = [125 100 225];

Wall_8_point_1 = [100 0 25];
Wall_8_point_2 = [-100 0 25];
Wall_8_point_3 = [-100 0 175];
Wall_8_point_4 = [100 0 175];

Wall_9_point_1 = [100 0 25];
Wall_9_point_2 = [100 0 175];
Wall_9_point_3 = [250 150 175];
Wall_9_point_4 = [250 150 0];
Wall_9_point_5 = [200 100 0];

Wall_10_point_1 = [250 150 0];
Wall_10_point_2 = [250 150 175];
Wall_10_point_3 = [150 600 162.5];
Wall_10_point_4 = [150 600 75];

Wall_11_point_1 = [-150 600 75];
Wall_11_point_2 = [-150 600 162.5];
Wall_11_point_3 = [-250 150 175];
Wall_11_point_4 = [-250 150 0];

Wall_12_point_1 = [-100 0 25];
Wall_12_point_2 = [-200 100 0];
Wall_12_point_3 = [-250 150 0];
Wall_12_point_4 = [-250 150 175];
Wall_12_point_5 = [-100 0 175];

Wall_13_point_1 = [-100 0 175];
Wall_13_point_2 = [-250 150 175];
Wall_13_point_3 = [-125 100 225];

Wall_14_point_1 = [-125 100 225];
Wall_14_point_2 = [-250 150 175];
Wall_14_point_3 = [-125 150 225];

Wall_15_point_1 = [-125 150 225];
Wall_15_point_2 = [-250 150 175];
Wall_15_point_3 = [-150 600 162.5];
Wall_15_point_4 = [-125 600 175];

Wall_16_point_1 = [250 150 175];
Wall_16_point_2 = [125 150 225];
Wall_16_point_3 = [125 600 175];
Wall_16_point_4 = [150 600 162.5];

Wall_17_point_1 = [250 150 175];
Wall_17_point_2 = [125 100 225];
Wall_17_point_3 = [125 150 225];

Wall_18_point_1 = [250 150 175];
Wall_18_point_2 = [100 0 175];
Wall_18_point_3 = [125 100 225];

Wall_19_point_1 = [125 375 200];
Wall_19_point_2 = [-125 375 200];
Wall_19_point_3 = [-125 600 175];
Wall_19_point_4 = [125 600 175];
end

for i=1:1 %Falmátrixok
    
Wall_1_Points = [Wall_1_point_1; Wall_1_point_2; Wall_1_point_3; Wall_1_point_4];
Wall_2_Points = [Wall_2_point_1; Wall_2_point_2; Wall_2_point_3; Wall_2_point_4]; 
Wall_3_Points = [Wall_3_point_1; Wall_3_point_2; Wall_3_point_3; Wall_3_point_4];
Wall_4_Points = [Wall_4_point_1; Wall_4_point_2; Wall_4_point_3; Wall_4_point_4; Wall_4_point_5; Wall_4_point_6; Wall_4_point_7]; 
Wall_5_Points = [Wall_5_point_1; Wall_5_point_2; Wall_5_point_3; Wall_5_point_4];
Wall_6_Points = [Wall_6_point_1; Wall_6_point_2; Wall_6_point_3; Wall_6_point_4];
Wall_7_Points = [Wall_7_point_1; Wall_7_point_2; Wall_7_point_3; Wall_7_point_4];
Wall_8_Points = [Wall_8_point_1; Wall_8_point_2; Wall_8_point_3; Wall_8_point_4];
Wall_9_Points = [Wall_9_point_1; Wall_9_point_2; Wall_9_point_3; Wall_9_point_4; Wall_9_point_5];
Wall_10_Points = [Wall_10_point_1; Wall_10_point_2; Wall_10_point_3; Wall_10_point_4];
Wall_11_Points = [Wall_11_point_1; Wall_11_point_2; Wall_11_point_3; Wall_11_point_4];
Wall_12_Points = [Wall_12_point_1; Wall_12_point_2; Wall_12_point_3; Wall_12_point_4; Wall_12_point_5];
Wall_13_Points = [Wall_13_point_1; Wall_13_point_2; Wall_13_point_3];
Wall_14_Points = [Wall_14_point_1; Wall_14_point_2; Wall_14_point_3];
Wall_15_Points = [Wall_15_point_1; Wall_15_point_2; Wall_15_point_3; Wall_15_point_4];
Wall_16_Points = [Wall_16_point_1; Wall_16_point_2; Wall_16_point_3; Wall_16_point_4];
Wall_17_Points = [Wall_17_point_1; Wall_17_point_2; Wall_17_point_3];
Wall_18_Points = [Wall_18_point_1; Wall_18_point_2; Wall_18_point_3];
Wall_19_Points = [Wall_19_point_1; Wall_19_point_2; Wall_19_point_3; Wall_19_point_4];

end

for i=1:1 %Plot szoba
   x1=Wall_1_Points(:,1);
   y1=Wall_1_Points(:,2);
   z1=Wall_1_Points(:,3);
   c1=2;
   fill3(x1,y1,z1,c1);
   
   xlabel('x'); ylabel('y'); zlabel('z');
   axis([-2750 2750 0 6500 0 2500])
   hold on
   grid 
   
   x2=Wall_2_Points(:,1);
   y2=Wall_2_Points(:,2);
   z2=Wall_2_Points(:,3);
   c2=2;
   fill3(x2,y2,z2,c2);
   
   x3=Wall_3_Points(:,1);
   y3=Wall_3_Points(:,2);
   z3=Wall_3_Points(:,3);
   c3=2;
   fill3(x3,y3,z3,c3);
   
   x4=Wall_4_Points(:,1);
   y4=Wall_4_Points(:,2);
   z4=Wall_4_Points(:,3);
   c4=2;
   fill3(x4,y4,z4,c4);

   x5=Wall_5_Points(:,1);
   y5=Wall_5_Points(:,2);
   z5=Wall_5_Points(:,3);
   c5=2;
   fill3(x5,y5,z5,c5);
   
   x6=Wall_6_Points(:,1);
   y6=Wall_6_Points(:,2);
   z6=Wall_6_Points(:,3);
   c6=2;
   fill3(x6,y6,z6,c6);
   
   x7=Wall_7_Points(:,1);
   y7=Wall_7_Points(:,2);
   z7=Wall_7_Points(:,3);
   c7=2;
   fill3(x7,y7,z7,c7);
   
   x8=Wall_8_Points(:,1);
   y8=Wall_8_Points(:,2);
   z8=Wall_8_Points(:,3);
   c8=2;
   fill3(x8,y8,z8,c8);
     
   x9=Wall_9_Points(:,1);
   y9=Wall_9_Points(:,2);
   z9=Wall_9_Points(:,3);
   c9=2;
   fill3(x9,y9,z9,c9);
   
   x10=Wall_10_Points(:,1);
   y10=Wall_10_Points(:,2);
   z10=Wall_10_Points(:,3);
   c10=2;
   fill3(x10,y10,z10,c10);
   
   x11=Wall_11_Points(:,1);
   y11=Wall_11_Points(:,2);
   z11=Wall_11_Points(:,3);
   c11=2;
   fill3(x11,y11,z11,c11);
   
   x12=Wall_12_Points(:,1);
   y12=Wall_12_Points(:,2);
   z12=Wall_12_Points(:,3);
   c12=2;
   fill3(x12,y12,z12,c12);
   
   x13=Wall_13_Points(:,1);
   y13=Wall_13_Points(:,2);
   z13=Wall_13_Points(:,3);
   c13=2;
   fill3(x13,y13,z13,c13);
   
   x14=Wall_14_Points(:,1);
   y14=Wall_14_Points(:,2);
   z14=Wall_14_Points(:,3);
   c14=2;
   fill3(x14,y14,z14,c14);
   
   x15=Wall_15_Points(:,1);
   y15=Wall_15_Points(:,2);
   z15=Wall_15_Points(:,3);
   c15=2;
   fill3(x15,y15,z15,c15);
   
   x16=Wall_16_Points(:,1);
   y16=Wall_16_Points(:,2);
   z16=Wall_16_Points(:,3);
   c16=2;
   fill3(x16,y16,z16,c16);
   
   x17=Wall_17_Points(:,1);
   y17=Wall_17_Points(:,2);
   z17=Wall_17_Points(:,3);
   c17=2;
   fill3(x17,y17,z17,c17);
   
   x18=Wall_18_Points(:,1);
   y18=Wall_18_Points(:,2);
   z18=Wall_18_Points(:,3);
   c18=2;
   fill3(x18,y18,z18,c18);
   
   x19=Wall_19_Points(:,1);
   y19=Wall_19_Points(:,2);
   z19=Wall_19_Points(:,3);
   c19=2;
   fill3(x19,y19,z19,c19);
end

for i=1:1 %Fal objektumok
Wall_1 = Wall(Wall_1_Points,1); 
Wall_2 = Wall(Wall_2_Points,1);
Wall_3 = Wall(Wall_3_Points,1);
Wall_4 = Wall(Wall_4_Points,1);
Wall_5 = Wall(Wall_5_Points,1);
Wall_6 = Wall(Wall_6_Points,1);
Wall_7 = Wall(Wall_7_Points,1);
Wall_8 = Wall(Wall_8_Points,1);
Wall_9 = Wall(Wall_9_Points,1);
Wall_10 = Wall(Wall_10_Points,1);
Wall_11 = Wall(Wall_11_Points,1);
Wall_12 = Wall(Wall_12_Points,1);
Wall_13 = Wall(Wall_13_Points,1);
Wall_14 = Wall(Wall_14_Points,1);
Wall_15 = Wall(Wall_15_Points,1);
Wall_16 = Wall(Wall_16_Points,1);
Wall_17 = Wall(Wall_17_Points,1);
Wall_18 = Wall(Wall_18_Points,1);
Wall_19 = Wall(Wall_19_Points,1);

end

WallList = [Wall_1 Wall_2 Wall_3 Wall_4 Wall_5 Wall_6 Wall_7 Wall_8 Wall_9 Wall_10 Wall_11 Wall_12 Wall_13 Wall_14 Wall_15 Wall_16 Wall_17 Wall_18 Wall_19];
QSource = Source(1, -75,50,30, 1, 0,1,0, 0);
SourceList = [QSource];
NumWalls = 19;
NumSources = 1;
P = Source(1, 50,350,50, 1, 0,-1,0, 0);
Order = 3;
dmax=1000;
Sourcemin=0.01; %-20dBSPL

Test_Room = Room(NumWalls, WallList,NumSources,SourceList,P,QSource,Order,dmax,Sourcemin);
Test_Result=Test_Room.CalculateMSList();

for i=1:1 %Források ábrázolása
    
    for j=1:Test_Result.NumSources
       
       coordinates=Test_Result.GetCoordinates(j);
       %figure(1)
       scatter3(coordinates(1),coordinates(2),coordinates(3),1,'g'); 
    end
    
end