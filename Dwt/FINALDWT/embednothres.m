function[LW]=embednothres(cA1,bin,alpha,sum)
%sub
% [row,col]=size(LH);
idsize=60;

%[bin idsize]=patid;

j=1;
 %[sum,tha,thaa]=calculate_capacity(C,S);
 

 LW=cA1;
                [row,col]=size(cA1);
                
                 ind1=round(row/3);
				 ind2=round(col/3);
                 for m=ind1:row
                    for n=ind2:col
                        
                        if(sum(m,n)==1)
                            LW(m,n)=cA1(m,n)+ (alpha.*bin(1,j).*cA1(m,n));
                       
                        j=j+1;
                        end
                        if j>idsize
                            break;
                        end
                        
                    end
                     if j>idsize
                            break;
                     end
                 end     
%                  j
                 %{
                if sub==1
                      LH=cA2;
                  end
                  if sub==2
                      HL=cA2;
                  end    
                   if sub==3    
                      HH=cA2;
                   end       
        
      i=S(1,1)*S(1,2);
C(1:i)=LL;
C(i+1:i+i)=LH;
C(2*i+1:2*i+i)=HL;
C(3*i+1:3*i+i)=HH;
   %}
         return;
         
                
                    
                    
                           
				                                            

            




               