function [Mut_Pop]=Mutation(Cross_Pop,Pm)
    Mut_Pop=Cross_Pop;
    Cross_Pop_num=size(Cross_Pop,1);   %记录交叉后种群的行数
    for j=1:Cross_Pop_num   %变异
        A=Cross_Pop(j,:);
        A_1=A;
        n=size(A,2);    %记录染色体长度
        r=rand(1,n);    %随机生成染色体长度个0-1之间的随机浮点数
        Pe=find(r<Pm);   %记录发生变异的位置  r<Pm时发生变异
        sum_Pe=size(Pe,2);  %记录变异的基因个数
        for i=1:sum_Pe
            c=A(Pe(i));
            A_1(Pe(i))=A_1(find(r==max(r)));  %将变异位置基因突变为最大r值所对应的基因
            A_1(find(r==max(r)))=c;   %将最大r值所对应的基因突变为变异位置基因
            Mut_Pop=[Mut_Pop;A_1];
        end
    end
end
