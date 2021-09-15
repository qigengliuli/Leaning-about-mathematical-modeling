function W=AHP_EWM(A,B)
%A为AHP得到的权重向量,行向量
%B为EWM得到的权重向量，行向量
%采用拉格朗日乘子法
M=(A.*B).^0.5;
N=sum(M);
disp('耦合权重为：')
W=M/N
