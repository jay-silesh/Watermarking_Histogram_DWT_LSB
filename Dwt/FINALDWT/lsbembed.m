%Project: 	Tutorial on Least Significant Bit Substitution
%               Watermark Embedding

clear all; 

% read in the cover object you want to use for embedding
file_name='text1.png';
cover_object=imread(file_name);

% read the message image you want to hide in the cover image
file_name='pic2.png';
message=imread(file_name);

% conversions needed to spread the image values on a 256 gray-scale
message=double(message);
message=round(message./256);
message=uint8(message);

% determine the size of cover image used for embedding
Mc=size(cover_object,1);	%Height
Nc=size(cover_object,2);	%Width

% determine the size of message object to embed
Mm=size(message,1);	        %Height
Nm=size(message,2);	        %Width

%y = uint8(wgn(Mm,Nm,1));

% title the message object out to cover object size to generate watermark
for ii = 1:Mc
    for jj = 1:Nc
        watermark(ii,jj)=message(mod(ii,Mm)+1,mod(jj,Nm)+1);
    end
end

% set the LSB of cover_object(ii,jj) to the value of the MSB of watermark(ii,jj)
watermarked_image=cover_object;
for ii = 1:Mc
    for jj = 1:Nc
        watermarked_image(ii,jj)=bitset(watermarked_image(ii,jj),1,watermark(ii,jj));
    end
end

% add noise to watermarked image
%noisy = imnoise(watermarked_image,'gaussian');

% write to file the two images
imwrite(watermarked_image,'lsb_watermarked.bmp','bmp');
%imwrite(noisy,'lsb_watermarked_noise.bmp','bmp');

% display watermarked image
figure(1)
imshow(watermarked_image,[])
title('Watermarked Image')

% display watermarked and noised image
figure(2)
%imshow(noisy,[])
title('Watermarked and noised Image')