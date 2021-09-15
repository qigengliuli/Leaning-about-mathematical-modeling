clc
clear
%rng('default') %设置确定值的随机数
%X=[randn(100,2)*0.75+ones(100,2);randn(100,2)*0.5-ones(100,2);randn(100,2)*0.75];
%[idx,C]=kmeans(X,3)  %idx为分类结果 C为聚类中心%X可为多维度数据
X=xlsread('F:\\建模数据\\matlab_data\\19.gene.xls');
[idx,C]=kmeans(X,3)
figure
plot(X(:,1),X(:,2),'.'); %以第一维和第二维数据作图
title('图头')
figure
plot(X(idx==1,1),X(idx==1,2),'r.','MarkerSize',12)  %将分为1类的数据成图
hold on
plot(X(idx==2,1),X(idx==2,2),'b.','MarkerSize',12) %将分为2类的数据成图
plot(X(idx==3,1),X(idx==3,2),'y.','MarkerSize',12) %将分为3类的数据成图
plot(C(:,1),C(:,2),'kx','MarkerSize',12,'LineWidth',3)  %画质心
legend('Cluster1','Cluster2','Cluster3','Centroids','Location','NW')  %'Location','NW' 将图例放在西北方向
title('Cluster Assignments and Centroids')
hold off