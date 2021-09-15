%%
clear all
clc
%% 加载数据
X=[35 10;30 40;60 30;50 50;40 35;10 40;25 30];
%第一列为物品重量 第二列为物品所对应的价值 背包最多能承载170斤的重量 求所背价值最大化

%% 定义初始参数
population_num=80;  %种群规模
Max_gen=150;  %迭代次数
Pc=0.9; %交叉概率
Pm=0.09; %变异概率
gen_num=7; %基因长度

%% 初始种群
population=zeros(population_num,gen_num);
for i=1:population_num
    for j=1:gen_num
        population(i,j)=round(rand(1));
    end
end
new_pop_value=0;
new_pop_weight=0;   %设置价值和重量初值 为求解之后的价值作比较并更新

%% 循环过程
idx=1; %循环计数器
while idx<Max_gen   %当迭代次数小于最大迭代次数时进去循环
    %交叉
    [new_population_intercross]=exchange(population,Pc);
    %变异
    [new_population_mutation]=Mutation(new_population_intercross,Pm);
    
    %计算目标函数
    g=size(new_population_mutation,1);  %记录变异后的新种群的行数
    [old_pop_value,old_pop_weight]=value(new_population_mutation,g,X);
    if old_pop_value>new_pop_value
        new_pop_value=old_pop_value;
        new_pop_weight=old_pop_weight;
    end
    idx=idx+1;
    best(idx)=new_pop_value;
end
plot(1:length(best),best,'r*-')
disp('最大价值')
new_pop_value
disp('对应重量')
new_pop_weight
