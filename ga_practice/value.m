function [old_pop_value,old_pop_weight]=value(new_pop_mutation,g,X)

for j=1:g
    old_pop_weight1(j,1)=new_pop_mutation(j,:)*X(:,1);
    old_pop_value1(j,1)=new_pop_mutation(j,:)*X(:,2);
    [a1,a2]=find(old_pop_weight1>170);
    b=length(a1);
    for i=1:b
        old_pop_value1(a1(i),a2(i))=zeros(1,1);
    end
end
old_pop_value=max(old_pop_value1);
c=max(old_pop_value1);
[b1,b2]=find(old_pop_value1==c);
old_pop_weight=old_pop_weight1(b1,b2);
end

