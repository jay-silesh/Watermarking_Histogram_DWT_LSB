function[psnr1]=testing()


A=imread('ori.png');
B=imread('wm.png');

% level1 = graythresh(A);
% BW1 = im2bw(A,level1);
% level2 = graythresh(B);
% BW2 = im2bw(B,level2);

%WPSNR(BW1,BW2);


A=double(A)/255;
B=double(B)/255;



psnr1=sapsnr(A,B);
% disp('done testing');        
