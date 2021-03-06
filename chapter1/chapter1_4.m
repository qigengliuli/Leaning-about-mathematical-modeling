clc
clear
f=[3100;3800;3500;2850;3100;3800;3500;2850;1;3800;3500;2850];
f=-f;
A=[1 1 1 1 0 0 0 0 0 0 0 0;
    0 0 0 0 1 1 1 1 0 0 0 0;
    0 0 0 0 0 0 0 0 1 1 1 1;
    1 0 0 0 1 0 0 0 1 0 0 0;
    0 1 0 0 0 1 0 0 0 1 0 0;
    0 0 1 0 0 0 1 0 0 0 1 0;
    0 0 0 1 0 0 0 1 0 0 0 1;
    480 650 580 390 0 0 0 0 0 0 0 0;
    0 0 0 0 480 650 580 390 0 0 0 0;
    0 0 0 0 0 0 0 0 480 650 580 390];
b=[10;16;8;18;15;23;12;6800;8700;5300];
Aeq=[1 1 1 1 -10/16 -10/16 -10/16 -10/16 0 0 0 0;
    1 1 1 1 0 0 0 0 -10/8 -10/8 -10/8 -10/8;
    0 0 0 0 1 1 1 1 -16/8 -16/8 -16/8 -16/8];
beq=[0;0;0];
lb=zeros(12,1);
[x,fval]=linprog(f,A,b,Aeq,beq,lb);
disp('The Optimal Solution is:')
x=reshape(x,4,3);
x=sum(x')
disp('The Optimal Value is:')
maxz=-fval