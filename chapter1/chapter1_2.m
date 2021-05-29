clc
clear
f=[1 2 3 4 1 2 3 4]';
Aeq=[1 -1 -1 1 -1 1 1 -1;1 -1 1 -3 -1 1 -1 3;1 -1 -2 3 -1 1 2 -3];
beq=[0 1 -1/2]';
[uv,fval]=linprog(f,[],[],Aeq,beq,zeros(8,1));
disp('The Optimal Solution is:')
x=uv(1:4)-uv(5:end)
disp('The Optimal Value is:')
fval