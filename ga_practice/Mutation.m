function [Mut_Pop]=Mutation(Cross_Pop,Pm)
    Mut_Pop=Cross_Pop;
    Cross_Pop_num=size(Cross_Pop,1);   %��¼�������Ⱥ������
    for j=1:Cross_Pop_num   %����
        A=Cross_Pop(j,:);
        A_1=A;
        n=size(A,2);    %��¼Ⱦɫ�峤��
        r=rand(1,n);    %�������Ⱦɫ�峤�ȸ�0-1֮������������
        Pe=find(r<Pm);   %��¼���������λ��  r<Pmʱ��������
        sum_Pe=size(Pe,2);  %��¼����Ļ������
        for i=1:sum_Pe
            c=A(Pe(i));
            A_1(Pe(i))=A_1(find(r==max(r)));  %������λ�û���ͻ��Ϊ���rֵ����Ӧ�Ļ���
            A_1(find(r==max(r)))=c;   %�����rֵ����Ӧ�Ļ���ͻ��Ϊ����λ�û���
            Mut_Pop=[Mut_Pop;A_1];
        end
    end
end
