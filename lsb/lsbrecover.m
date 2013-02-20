%Project: 	Tutorial on Least Significant Bit Substitution
%               Watermark Recover

clear all;

% read in watermarked image
file_name='lsb_watermarked.png';
watermarked_image=imread(file_name);

% determine size of watermarked image
Mw=size(watermarked_image,1);	%Height
Nw=size(watermarked_image,2);	%Width

% use lsb of watermarked image to recover watermark
for ii = 1:Mw
    for jj = 1:Nw
        watermark(ii,jj)=bitget(watermarked_image(ii,jj),1);
    end
end

% scale the recovered watermark
watermark=256*double(watermark);

% scale and display recovered watermark
figure(1)
imshow(watermark)
%I=gray2ind(watermark);
%I=ind2rgb(I,map);
I=watermark;
imwrite(I,'wm.png','png');
imtool(I)
title('Recovered Watermark')