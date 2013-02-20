function [C]= bitcheck(bin,WW2)

idsize=7;
summ=0;
for m= 1:7
    if bin(1,m)== WW2(1,m)
        summ=summ+1;
    end
end
err=idsize-summ;
C=err/idsize.*100;


