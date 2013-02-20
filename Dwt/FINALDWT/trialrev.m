function [RW]=trialrev(WW2)

k=1;
%[ nrows, ncols] =size(b_image);
for l=1:15
    for u=1:44
       RW(l,u)=WW2(1,k);
        k=k+1;
    end
end