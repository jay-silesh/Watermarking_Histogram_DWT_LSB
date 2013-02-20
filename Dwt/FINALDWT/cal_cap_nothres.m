function [sum]=cal_cap_nothres(LH)
%clc;
%{
i=S(1,1)*S(1,2);
LL=C(1:i);
LH=C(i+1:i+i);
HL=C(2*i+1:2*i+i);
HH=C(3*i+1:3*i+i);
%}
                sum=[0.0];
               
                      cA1=LH;
                       
                  
         sum=cal_rand(cA1);    
              
               
              