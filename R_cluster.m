X=xlsread('F:\\��ģ����\\matlab_data\\20.education.xls');
X=zscore(X);
r=corrcoef(X);
d=pdist(r','cityblock')
yc=squareform(d);
z=linkage(d)
dendrogram(z)
T=cluster(z,'maxclust',3)
for i=1:3
    tm=find(T==i);
    tm=reshape(tm,1,length(tm));
    fprintf('��%d ����� s\n',i)
    int2str(tm)
end
