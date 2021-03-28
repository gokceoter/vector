
clear all

%eqn1
x=-10:.5:10;
[X,Z]=meshgrid(x);
a=1; b=-1; c=2; d=9;
Y=(d-a*X-c*Z)/b;
figure 
surf(X,Y,Z)
colormap hsv
shading faceted
xlabel('x'); ylabel('y'); zlabel('z')
hold on

%eqn2
clear all;
x=-5:.5:5;
[X,Y]=meshgrid(x);
a=-2; b=3; c=1; d=-4;
Z=(d-a*X-b*Y)/c;

surf(X,Y,Z)

%eqn3
a=0; b=-1; c=1; d=4;
Z=(d-a*X-b*Y)/c;

surf(X,Y,Z)

figure 
xvector=[2 0 0];
yvector=[0 2 0];
zvector=[0 0 2];

quiver3(0,0,0,xvector(1),xvector(2),xvector(3),'k')
hold on
quiver3(0,0,0,-xvector(1),xvector(2),xvector(3),'k')
quiver3(0,0,0,yvector(1),yvector(2),yvector(3),'k')
quiver3(0,0,0,yvector(1),-yvector(2),-yvector(3),'k')
quiver3(0,0,0,zvector(1),zvector(2),zvector(3),'k')
quiver3(0,0,0,zvector(1),zvector(2),-zvector(3),'k')

%-- plot column vectors of A and b --
column1=[1 -2 1];
column2=[-2 1 1];
column3=[0 -1 1];
bvector=[9 -4 4];
quiver3(0,0,0,column1(1),column1(2),column1(3),'b')
quiver3(0,0,0,column2(1),column2(2),column2(3),'b')
quiver3(0,0,0,column3(1),column3(2),column3(3),'b')
quiver3(0,0,0,bvector(1),bvector(2),bvector(3),'r')
xlabel('x'); ylabel('y'); zlabel('z')


%----SOLUTION----%

%x-y+2z=9 
%-2x+3y+z=-4
%-y+z=4
a=[1 -1 2;-2 3 1;0 -1 1];
b=[9;-4;4];
A=inv(a);
A*b
