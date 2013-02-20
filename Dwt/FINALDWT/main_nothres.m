function [psnr1 err]=main_nothres(sum,level,alpha2)


 I=imread('IE2.jpg');
 imwrite(I,'ori.png');
[a,h,v,d]=dwt2(I,'db1');
bin=[1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 ];
%bin=randerr(1,60);
disp('The randomly generated bin is : ');
disp(bin);

H=embednothres(h,bin,alpha2,sum);


y = idwt2(a,H,v,d,'db1');

w=uint8(y);

imwrite(w,'wm.png','png'); %wmi is our watermarked full image.

%#####################$$$$$$$$$$$$$$$%%%%%%%%%%%%%^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
psnr1=testing;
psnr1


% %watermarked image attacked with speckle noise
% attack1;
% 
% 
% %watermarked image compressed
% attack3nothres;
% 
% 
% %watermarked image denoised
% attack4;


 C2=main_nothres2(level,alpha2,sum);
 
 err=bitcheck(bin, C2);




%C2