function [C2]=main_nothres2(level,alpha2,sum)

disp('Embedding done');

pause;
 I=imread('ori.png');

I=double(I);

% Jo=level;


 [a,h,v,d] = dwt2(I,'db1');
 
 
 Iw=imread('wm.png');

Iw=double(Iw);

% Jw=level;


 [a1,h1,v1,d1] = dwt2(Iw,'db1');

C2=retrievenothres(h,h1,alpha2,sum);