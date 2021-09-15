rng('default') % For reproducibility
X=xlsread('F:\\建模数据\\matlab_data\\19.gene.xls');
opts = statset('Display','iter');
[idx,C,sumd,d,midx,info] = kmedoids(X,3,'Distance','cityblock','Options',opts);
figure;
plot(X(:,1),X(:,2),'.');
title('whatever you want');
figure;
plot(X(idx==1,1),X(idx==1,2),'r.','MarkerSize',12)
hold on
plot(X(idx==2,1),X(idx==2,2),'b.','MarkerSize',12)
hold on 
plot(X(idx==3,1),X(idx==3,2),'m.','MarkerSize',12)
plot(C(:,1),C(:,2),'kx','MarkerSize',15,'LineWidth',3) 
legend('Cluster 1','Cluster 2','Cluster3','Centroids','Location','NW')
title('Cluster Assignments and Centroids')
hold off
