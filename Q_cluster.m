close all
clear
clc
X=readmatrix('C:\\Users\\22490\\Desktop\\������1.xlsx');
%X=xlsread('F:\\��ģ����\\matlab_data\\19.gene.xls');
y=pdist(X,'cityblock');  %������֮��ľ���
yc=squareform(y)    %����������
z=linkage(y) %%ʹ����̾��뷨���ɲ�νṹ�ľ�������Z=linkage(y,��method��)Ҳ����ָ�����㷽����
T=cluster(z,'maxclust',3)  %��z����Ϊ3�࣬����ÿ�������ķ�����
dendrogram(z)  %��324������ȫ����ʾ�ڶ������У�%Ĭ�����������������С��30����ʾ������30��������30��ʾ����0������ȫ��������ʾ
for i=1:3   %��ÿһ��������������ʾ����
    tm=find(T==i);
    tm=reshape(tm,1,length(tm));
    fprintf('�� %d �����:',i);
    int2str(tm)
end
