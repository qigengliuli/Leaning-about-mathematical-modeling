close all
clear
clc
X=readmatrix('C:\\Users\\22490\\Desktop\\工作簿1.xlsx');
%X=xlsread('F:\\建模数据\\matlab_data\\19.gene.xls');
y=pdist(X,'cityblock');  %求两两之间的距离
yc=squareform(y)    %求出距离矩阵
z=linkage(y) %%使用最短距离法生成层次结构的聚类树，Z=linkage(y,’method’)也可以指定计算方法。
T=cluster(z,'maxclust',3)  %将z最大分为3类，生成每个样本的分类结果
dendrogram(z)  %将324和样本全部显示在二叉树中，%默认情况下数据样本数小于30则都显示，多余30则收缩按30显示，’0‘代表将全部样本显示
for i=1:3   %将每一类所含的样本显示出来
    tm=find(T==i);
    tm=reshape(tm,1,length(tm));
    fprintf('第 %d 类的有:',i);
    int2str(tm)
end
