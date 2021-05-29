clc
clear all
clear
f=[-3 1 1];
A=[1 -2 1;4 -1 -2];
b=[11;-3];
Aeq=[-2 0 1];
beq=[1];
lb=[0;0;0];
[x,M]=linprog(f,A,b,Aeq,beq,lb);
disp('最优值为：')
z=-M
disp('最优解为：')
x