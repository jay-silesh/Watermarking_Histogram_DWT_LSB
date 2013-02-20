clc;
xxx=imread('watermarked_image.png');
%xxx=rgb2gray(xxx);
xxx = imnoise(xxx,'salt & pepper',0.08);
imwrite(xxx,'watermarked_image.png','png');
imshow(xxx);
