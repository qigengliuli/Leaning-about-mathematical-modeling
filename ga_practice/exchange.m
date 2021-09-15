function new_pop_intercross=exchange(population,Pc)
n=size(population,2);  %得到population的列数
r=rand(1);   %生成一个随机数用来与交叉概率比较  小于交叉概率则发生染色体交叉
population1=population;
if r<Pc        %采用两点交叉 即交叉两个位点中间部分染色体
    c1=randi(n);  %生成1-n中的一个随机整数
    c2=randi(n);  %生成1-n中的一个随机整数
    sort_c=sort([c1,c2]);  %将随机生成的两个数 从小到大排列
    c1=sort_c(1);
    c2=sort_c(2);    %记录交叉位点
    a1=floor(80*rand(1)+1);
    a2=floor(80*rand(1)+1);   %随机选取两个父代进行交叉
    
    temp1_1=population(a1,1:c1-1);  %a1以c1,c2为分割点分为三段
    temp1_2=population(a1,c1:c2);
    temp1_3=population(a1,c2+1:end);
    
    temp2_1=population(a2,1:c1-1);  %a2以c1,c2为分割点分为三段
    temp2_2=population(a2,c1:c2);
    temp2_3=population(a2,c2+1:end);
    
    temp1=[temp1_1 temp2_2 temp1_3];
    temp2=[temp2_1 temp1_2 temp2_3];  %重组后的两个新子代
    population1=[population1;temp1];
    new_pop_intercross=[population1;temp2];  %产生子代后的新种群
else
    new_pop_intercross = population;  %未发生染色体交叉新种群仍为旧种群
end

end

    
    
