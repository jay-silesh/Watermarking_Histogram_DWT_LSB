function [psnr1 C2]=newmainnothres()
clc;
clear all;
close all;
real_image='IE2.jpg';
I=imread(real_image);

%x=double(I);

[a,h,v,d]=dwt2(I,'db1');

sum=cal_cap_nothres(h);

[psnr1 C2 ]=main_nothres(sum,1,0.5);

disp('The error is :');
disp(C2);
%  sum
%  tha
%  thaa
%  pause

