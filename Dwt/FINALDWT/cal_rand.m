function [emmat] = cal_rand(temp_col)
clc;

[ rows, cols ] = size(temp_col);

                x=max(temp_col);
                %x
               % pause;
                d=max(x);
                 f=log2(d)-1;
                 th=pow2(f);
                 tha=floor(th);
%                  tha
                 
                 
                 
%                  
                 thaa=min(temp_col);    
                 thaa=min(thaa);
%                  thaa
%                  pause;
                 %{ thaa=(thaa+tha)/2;
                   %thaa=floor(thaa);
                  %}
                 if thaa<0
                     thaa=0;
                 end    
                 
                
                 emmat=zeros(rows,cols);
        for m=1:rows   
            for n = 1:cols
                %if temp_col(m,n)> thaa && temp_col(m,n)<=tha
                if temp_col(m,n)> thaa 
                    emmat(m,n)=1;
                end
           end
           
        end
% emmat
% pause;
