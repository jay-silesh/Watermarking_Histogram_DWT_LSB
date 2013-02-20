function [C2]=main_nothres2(level,subband,alpha2)

 
 I=imread('c:\wm\ori.jpg');

I=double(I);

 Jo=level;


 [Co,So] = wavedec2(I,Jo,'db1');
 
 
 Iw=imread('c:\wm\wm.jpg');

Iw=double(Iw);

 Jw=level;


 [Cw,Sw] = wavedec2(Iw,Jw,'db1');




C2=retrievenothres(Co,Cw,So,subband,alpha2); 
%  
 
 
 
 
 
% Iw=imread('c:\wm\wmattacked1.jpg');
% 
% Iw=double(Iw);
% 
%  Jw=level;
% 
% 
%  [Cw,Sw] = wavedec2(Iw,Jw,'db1');
% 
% 
% 
% 
% c1=retrievenothres(Co,Cw,So,subband,alpha2); 
% 
% 
% Iw=imread('c:\wm\wmattacked3.jpg');
% 
% Iw=double(Iw);
% 
%  Jw=level;
% 
% 
%  [Cw,Sw] = wavedec2(Iw,Jw,'db1');
% 
% c2=retrievenothres(Co,Cw,So,subband,alpha2);  
% 
% Iw=imread('c:\wm\wmattacked4.jpg');
% 
% Iw=double(Iw);
% 
%  Jw=level;
% 
% 
%  [Cw,Sw] = wavedec2(Iw,Jw,'db1');
% 
% c3=retrievenothres(Co,Cw,So,subband,alpha2);  
% % c1
% % c2
% % c3
% C2=(c1 + c2 + c3)/3;
% 
% 
% 
% 
