function new_pop_intercross=exchange(population,Pc)
n=size(population,2);  %�õ�population������
r=rand(1);   %����һ������������뽻����ʱȽ�  С�ڽ����������Ⱦɫ�彻��
population1=population;
if r<Pc        %�������㽻�� ����������λ���м䲿��Ⱦɫ��
    c1=randi(n);  %����1-n�е�һ���������
    c2=randi(n);  %����1-n�е�һ���������
    sort_c=sort([c1,c2]);  %��������ɵ������� ��С��������
    c1=sort_c(1);
    c2=sort_c(2);    %��¼����λ��
    a1=floor(80*rand(1)+1);
    a2=floor(80*rand(1)+1);   %���ѡȡ�����������н���
    
    temp1_1=population(a1,1:c1-1);  %a1��c1,c2Ϊ�ָ���Ϊ����
    temp1_2=population(a1,c1:c2);
    temp1_3=population(a1,c2+1:end);
    
    temp2_1=population(a2,1:c1-1);  %a2��c1,c2Ϊ�ָ���Ϊ����
    temp2_2=population(a2,c1:c2);
    temp2_3=population(a2,c2+1:end);
    
    temp1=[temp1_1 temp2_2 temp1_3];
    temp2=[temp2_1 temp1_2 temp2_3];  %�������������Ӵ�
    population1=[population1;temp1];
    new_pop_intercross=[population1;temp2];  %�����Ӵ��������Ⱥ
else
    new_pop_intercross = population;  %δ����Ⱦɫ�彻������Ⱥ��Ϊ����Ⱥ
end

end

    
    
