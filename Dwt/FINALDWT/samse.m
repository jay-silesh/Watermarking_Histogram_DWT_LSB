function MSE=samse(ori,wmi)
[n m]=size(wmi);
%[n1 m1]=size(wmi);
    sum=0.0;
    for i=1:n
        for j=1:m
            diff=abs(wmi(i,j)-ori(i,j));
          sum=sum + (diff*diff);
        end
    end
val=1/(n*m);
MSE=(val)*(sum);
