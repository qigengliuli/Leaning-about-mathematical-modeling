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
disp('����ֵΪ��')
z=-M
disp('���Ž�Ϊ��')
x