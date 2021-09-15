clc
clear
%rng('default') %����ȷ��ֵ�������
%X=[randn(100,2)*0.75+ones(100,2);randn(100,2)*0.5-ones(100,2);randn(100,2)*0.75];
%[idx,C]=kmeans(X,3)  %idxΪ������ CΪ��������%X��Ϊ��ά������
X=xlsread('F:\\��ģ����\\matlab_data\\19.gene.xls');
[idx,C]=kmeans(X,3)
figure
plot(X(:,1),X(:,2),'.'); %�Ե�һά�͵ڶ�ά������ͼ
title('ͼͷ')
figure
plot(X(idx==1,1),X(idx==1,2),'r.','MarkerSize',12)  %����Ϊ1������ݳ�ͼ
hold on
plot(X(idx==2,1),X(idx==2,2),'b.','MarkerSize',12) %����Ϊ2������ݳ�ͼ
plot(X(idx==3,1),X(idx==3,2),'y.','MarkerSize',12) %����Ϊ3������ݳ�ͼ
plot(C(:,1),C(:,2),'kx','MarkerSize',12,'LineWidth',3)  %������
legend('Cluster1','Cluster2','Cluster3','Centroids','Location','NW')  %'Location','NW' ��ͼ��������������
title('Cluster Assignments and Centroids')
hold off