function C=retrievenothres(LHo,LHw,alpha,sum)
 
logosize=60;

j=1;

           cA1=LHo;
           cAw=LHw;
                 
 
                     [row,col]=size(cA1);
                 
				  j=1;
                  ind1=round(row/3);
                  ind2=round(col/3);
				 for m=ind1:row
                  for n=ind2:col
                        if (sum(m,n)==1)  
                       WW1(1,j)=(cAw(m,n)-cA1(m,n))/(alpha*cA1(m,n));
                                             
                        
                        j=j+1;
                        end
                        
                                            
                        if j>logosize
                            break;
                        end
                  end
                                      
                        if j>logosize
                            break;
                        end
                 end
                     
                
%    j

 WW2=uint8(WW1); 
       [r c]=size(WW1)           
       for j=1:60
        if WW1(1,j)>0;
            WW2(1,j)=1;
        else  WW2(1,j)=0;
            
        end
       end
    
       
       
       
       
   % comparing
 
  C=WW2
    

    
    

  
  

