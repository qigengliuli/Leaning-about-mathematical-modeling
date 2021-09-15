%%
clear all
clc
%% ��������
X=[35 10;30 40;60 30;50 50;40 35;10 40;25 30];
%��һ��Ϊ��Ʒ���� �ڶ���Ϊ��Ʒ����Ӧ�ļ�ֵ ��������ܳ���170������� ��������ֵ���

%% �����ʼ����
population_num=80;  %��Ⱥ��ģ
Max_gen=150;  %��������
Pc=0.9; %�������
Pm=0.09; %�������
gen_num=7; %���򳤶�

%% ��ʼ��Ⱥ
population=zeros(population_num,gen_num);
for i=1:population_num
    for j=1:gen_num
        population(i,j)=round(rand(1));
    end
end
new_pop_value=0;
new_pop_weight=0;   %���ü�ֵ��������ֵ Ϊ���֮��ļ�ֵ���Ƚϲ�����

%% ѭ������
idx=1; %ѭ��������
while idx<Max_gen   %����������С������������ʱ��ȥѭ��
    %����
    [new_population_intercross]=exchange(population,Pc);
    %����
    [new_population_mutation]=Mutation(new_population_intercross,Pm);
    
    %����Ŀ�꺯��
    g=size(new_population_mutation,1);  %��¼����������Ⱥ������
    [old_pop_value,old_pop_weight]=value(new_population_mutation,g,X);
    if old_pop_value>new_pop_value
        new_pop_value=old_pop_value;
        new_pop_weight=old_pop_weight;
    end
    idx=idx+1;
    best(idx)=new_pop_value;
end
plot(1:length(best),best,'r*-')
disp('����ֵ')
new_pop_value
disp('��Ӧ����')
new_pop_weight
