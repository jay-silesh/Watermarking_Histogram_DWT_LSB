clc;
clear all;
close all;
%%
%reading the image and dividing the image into child blocks...
real_image='IE2.jpg';
%[x,map]=imread('text.png');
%image=ind2gray(x,map);
%image=rgb2gray(image);
image=imread(real_image);
%imwrite(image,'t2.png','png');

signals=[0,1,0,1,0,1,0,1];

disp('Signal to be inserted is');
signals
%%
[m1,n1]=size(image);
I=image;
h=zeros(43,1);




for i=1:m1
    for j=1:n1
        value=I(i,j);
        if ( value >= 0 && value <6)
            h(1,1)=h(1,1)+1;
        elseif(value >= 6 && value <12)
            h(2,1)=h(2,1)+1;
        elseif(value >=12 && value <18)
            h(3,1)=h(3,1)+1;
        elseif(value >= 18 && value <24)
            h(4,1)=h(4,1)+1;
        elseif(value >= 24 && value <30)
            h(5,1)=h(5,1)+1;
        elseif(value >= 30 && value <36)
            h(6,1)=h(6,1)+1;
        elseif(value >= 36 && value <42)
            h(7,1)=h(7,1)+1;
        elseif(value >= 42 && value <48)
            h(8,1)=h(8,1)+1;
        elseif(value >= 48 && value <54)
            h(9,1)=h(9,1)+1;
        elseif(value >= 54 && value <60)
            h(10,1)=h(10,1)+1;
        elseif(value >= 60 && value <66)
            h(11,1)=h(11,1)+1;
        elseif(value >= 66 && value <72)
            h(12,1)=h(12,1)+1;
        elseif(value >= 72 && value <78)
            h(13,1)=h(13,1)+1;
        elseif(value >= 78 && value <84)
            h(14,1)=h(14,1)+1;
        elseif(value >= 84 && value <90)
            h(15,1)=h(15,1)+1;
        elseif(value >= 90 && value <96)
            h(16,1)=h(16,1)+1;
        elseif(value >= 96 && value <102)
            h(17,1)=h(17,1)+1;
        elseif(value >= 102 && value <108)
            h(18,1)=h(18,1)+1;
        elseif(value >= 108 && value <114)
            h(19,1)=h(19,1)+1;
        elseif(value >= 114 && value <120)
            h(20,1)=h(20,1)+1;
        elseif(value >= 120 && value <126)
            h(21,1)=h(21,1)+1;
        elseif(value >= 126 && value <132)
            h(22,1)=h(22,1)+1;
        elseif(value >= 132 && value <138)
            h(23,1)=h(23,1)+1;
        elseif(value >= 138 && value <144)
            h(24,1)=h(24,1)+1;
        elseif(value >= 144 && value <150)
            h(25,1)=h(25,1)+1;
        elseif(value >= 150 && value <156)
            h(26,1)=h(26,1)+1;
        elseif(value >= 156 && value <162)
            h(27,1)=h(27,1)+1;
        elseif(value >= 162 && value <168)
            h(28,1)=h(28,1)+1;
        elseif(value >= 168 && value <174)
            h(29,1)=h(29,1)+1;
        elseif(value >= 174 && value <180)
            h(30,1)=h(30,1)+1;
        elseif(value >= 180 && value <186)
            h(31,1)=h(31,1)+1;
        elseif(value >= 186 && value <192)
            h(32,1)=h(32,1)+1;
        elseif(value >= 192 && value <198)
            h(33,1)=h(33,1)+1;
        elseif(value >= 198 && value <204)
            h(34,1)=h(34,1)+1;
        elseif(value >= 204 && value <210)   %%%
            h(35,1)=h(35,1)+1;
        elseif(value >= 210 && value <216)   %%%
            h(36,1)=h(36,1)+1;
        elseif(value >= 216 && value <222)
            h(37,1)=h(37,1)+1;
        elseif(value >= 222 && value <228)
            h(38,1)=h(38,1)+1;
        elseif(value >= 228 && value <234)
            h(39,1)=h(39,1)+1;
        elseif(value >= 234 && value <240)
            h(40,1)=h(40,1)+1;
        elseif(value >= 240 && value <246)
            h(41,1)=h(41,1)+1;
        elseif(value >= 246 && value <252)
            h(42,1)=h(42,1)+1;
        elseif(value >= 252 && value <255)
            h(43,1)=h(43,1)+1;
        end
    end
end

%%
% calculating the histograms to be edited....

if(0)
tempx1=zeros(4,1);
tempx=2;
for i=1:4
     tempx1(i,1)=mod(((tempx*7)+15), 44);
     tempx=tempx1(i,1);
     if(i==2)
         tempx1(i,1)=tempx1(i,1)-4;
     end
     if(i==4)
         tempx1(i,1)=tempx1(i,1)-4;
     end
end
end
tempx1=[23;17;7;40;29;11;33;2];

%%
%.....

%%
% trying the reversal algorithm....
image_temp=image;
tic;
for cindex=1:8
                        
            q=tempx1(cindex,1);
            w=tempx1(cindex,1)+1;
            while(h(q,1) == h(w,1))
            
                q=q+1;
                w=w+1;
                if( (q>44||q==4) || w>44)
                    q=35;
                    w=36;
                end
            end
            
            
            degree1=(q-1)*6;
            degree2=(w-1)*6;
           
            
            %calculation of degree...
            signal=signals(cindex);
            
            if(signal==1)
                if(h(q,1)>h(w,1))
                    flag1=0;
                    disp('signal 1 already inserted');
                elseif(h(w,1)>h(q,1))
                    flag1=1;
                    disp('swapping for 1');
                end
            else
                if(h(q,1)<h(w,1))
                    
                    flag1=0;
                    disp('signal 0 already inserted');
                elseif(h(w,1)<h(q,1))
                    flag1=1;
                    disp('swapping for 0');
                end
            end

            %%

            [m2,n2]=size(image_temp);

            if(flag1==1)
            
                for i=1:m2
                    for j=1:n2
                        value=image(i,j);

                        if(value==degree1)
                            image_temp(i,j)=degree2;
                        elseif(value==degree1+1)
                            image_temp(i,j)=degree2+1;
                        elseif(value==degree1+2)
                            image_temp(i,j)=degree2+2;
                        elseif(value==degree1+3)
                            image_temp(i,j)=degree2+3;
                        elseif(value==degree1+4)
                            image_temp(i,j)=degree2+4;
                        elseif(value==degree1+5)
                            image_temp(i,j)=degree2+5;
                        end    


                        if(value==degree2)
                            image_temp(i,j)=degree1;
                        elseif(value==degree2+1)
                            image_temp(i,j)=degree1+1;
                        elseif(value==degree2+2)
                            image_temp(i,j)=degree1+2;
                        elseif(value==degree2+3)
                            image_temp(i,j)=degree1+3;
                        elseif(value==degree2+4)
                            image_temp(i,j)=degree1+4;
                        elseif(value==degree2+5)
                            image_temp(i,j)=degree1+5;
                        end

                    end
                end
           end
       
        [m11,n11]=size(image_temp);
        I2=image_temp;
        h1=zeros(43,1);
        for ii=1:m11
            for jj=1:n11
                value1=I2(ii,jj);
                if ( value1 >= 0 && value1 <6)
                    h1(1,1)=h1(1,1)+1;
                elseif(value1 >= 6 && value1 <12)
                    h1(2,1)=h1(2,1)+1;
                elseif(value1 >=12 && value1 <18)
                    h1(3,1)=h1(3,1)+1;
                elseif(value1 >= 18 && value1 <24)
                    h1(4,1)=h1(4,1)+1;
                elseif(value1 >= 24 && value1 <30)
                    h1(5,1)=h1(5,1)+1;
                elseif(value1 >= 30 && value1 <36)
                    h1(6,1)=h1(6,1)+1;
                elseif(value1 >= 36 && value1 <42)
                    h1(7,1)=h1(7,1)+1;
                elseif(value1 >= 42 && value1 <48)
                    h1(8,1)=h1(8,1)+1;
                elseif(value1 >= 48 && value1 <54)
                    h1(9,1)=h1(9,1)+1;
                elseif(value1 >= 54 && value1 <60)
                    h1(10,1)=h1(10,1)+1;
                elseif(value1 >= 60 && value1 <66)
                    h1(11,1)=h1(11,1)+1;
                elseif(value1 >= 66 && value1 <72)
                    h1(12,1)=h1(12,1)+1;
                elseif(value1 >= 72 && value1 <78)
                    h1(13,1)=h1(13,1)+1;
                elseif(value1 >= 78 && value1 <84)
                    h1(14,1)=h1(14,1)+1;
                elseif(value1 >= 84 && value1 <90)
                    h1(15,1)=h1(15,1)+1;
                elseif(value1 >= 90 && value1 <96)
                    h1(16,1)=h1(16,1)+1;
                elseif(value1 >= 96 && value1 <102)
                    h1(17,1)=h1(17,1)+1;
                elseif(value1 >= 102 && value1 <108)
                    h1(18,1)=h1(18,1)+1;
                elseif(value1 >= 108 && value1 <114)
                    h1(19,1)=h1(19,1)+1;
                elseif(value1 >= 114 && value1 <120)
                    h1(20,1)=h1(20,1)+1;
                elseif(value1 >= 120 && value1 <126)
                    h1(21,1)=h1(21,1)+1;
                elseif(value1 >= 126 && value1 <132)
                    h1(22,1)=h1(22,1)+1;
                elseif(value1 >= 132 && value1 <138)
                    h1(23,1)=h1(23,1)+1;
                elseif(value1 >= 138 && value1 <144)
                    h1(24,1)=h1(24,1)+1;
                elseif(value1 >= 144 && value1 <150)
                    h1(25,1)=h1(25,1)+1;
                elseif(value1 >= 150 && value1 <156)
                    h1(26,1)=h1(26,1)+1;
                elseif(value1 >= 156 && value1 <162)
                    h1(27,1)=h1(27,1)+1;
                elseif(value1 >= 162 && value1 <168)
                    h1(28,1)=h1(28,1)+1;
                elseif(value1 >= 168 && value1 <174)
                    h1(29,1)=h1(29,1)+1;
                elseif(value1 >= 174 && value1 <180)
                    h1(30,1)=h1(30,1)+1;
                elseif(value1 >= 180 && value1 <186)
                    h1(31,1)=h1(31,1)+1;
                elseif(value1 >= 186 && value1 <192)
                    h1(32,1)=h1(32,1)+1;
                elseif(value1 >= 192 && value1 <198)
                    h1(33,1)=h1(33,1)+1;
                elseif(value1 >= 198 && value1 <204)
                    h1(34,1)=h1(34,1)+1;
                elseif(value1 >= 204 && value1 <210)   %%%
                    h1(35,1)=h1(35,1)+1;
                elseif(value1 >= 210 && value1 <216)   %%%
                    h1(36,1)=h1(36,1)+1;
                elseif(value1 >= 216 && value1 <222)
                    h1(37,1)=h1(37,1)+1;
                elseif(value1 >= 222 && value1 <228)
                    h1(38,1)=h1(38,1)+1;
                elseif(value1 >= 228 && value1 <234)
                    h1(39,1)=h1(39,1)+1;
                elseif(value1 >= 234 && value1 <240)
                    h1(40,1)=h1(40,1)+1;
                elseif(value1 >= 240 && value1 <246)
                    h1(41,1)=h1(41,1)+1;
                elseif(value1 >= 246 && value1 <252)
                    h1(42,1)=h1(42,1)+1;
                elseif(value1 >= 252 && value1 <255)
                    h1(43,1)=h1(43,1)+1;
                end
            end
        end
        
end
ti=toc;
disp('time taken');
disp(ti);
%%    
%%
if(0)
figure(1);
imshow(image);
figure(2);
title('Watermarked Image');
imshow(image_temp);
end
imwrite(image_temp,'watermarked_image.png','png');



%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% decoding starts here...

clearvars -except image_temp real_image tempx1 signals ti;



% tempx1=zeros(4,1);
if(0)
    
for i=1:4
     tempx1(i,1)=mod(((tempx*7)+15), 44);
     tempx=tempx1(i,1);
     if(i==2)
         tempx1(i,1)=tempx1(i,1)-4;
     end
     
     if(i==4)
         tempx1(i,1)=tempx1(i,1)-4;
     end
end
end
% tempx1=[21;15;6;40];
%dimage=imread('watermarked.png');
dimage=image_temp;


I=dimage;
h=zeros(44,1);
[m1,n1]=size(dimage);
for i=1:m1
    for j=1:n1
        value=I(i,j);
        if ( value >= 0 && value <6)
            h(1,1)=h(1,1)+1;
        elseif(value >= 6 && value <12)
            h(2,1)=h(2,1)+1;
        elseif(value >=12 && value <18)
            h(3,1)=h(3,1)+1;
        elseif(value >= 18 && value <24)
            h(4,1)=h(4,1)+1;
        elseif(value >= 24 && value <30)
            h(5,1)=h(5,1)+1;
        elseif(value >= 30 && value <36)
            h(6,1)=h(6,1)+1;
        elseif(value >= 36 && value <42)
            h(7,1)=h(7,1)+1;
        elseif(value >= 42 && value <48)
            h(8,1)=h(8,1)+1;
        elseif(value >= 48 && value <54)
            h(9,1)=h(9,1)+1;
        elseif(value >= 54 && value <60)
            h(10,1)=h(10,1)+1;
        elseif(value >= 60 && value <66)
            h(11,1)=h(11,1)+1;
        elseif(value >= 66 && value <72)
            h(12,1)=h(12,1)+1;
        elseif(value >= 72 && value <78)
            h(13,1)=h(13,1)+1;
        elseif(value >= 78 && value <84)
            h(14,1)=h(14,1)+1;
        elseif(value >= 84 && value <90)
            h(15,1)=h(15,1)+1;
        elseif(value >= 90 && value <96)
            h(16,1)=h(16,1)+1;
        elseif(value >= 96 && value <102)
            h(17,1)=h(17,1)+1;
        elseif(value >= 102 && value <108)
            h(18,1)=h(18,1)+1;
        elseif(value >= 108 && value <114)
            h(19,1)=h(19,1)+1;
        elseif(value >= 114 && value <120)
            h(20,1)=h(20,1)+1;
        elseif(value >= 120 && value <126)
            h(21,1)=h(21,1)+1;
        elseif(value >= 126 && value <132)
            h(22,1)=h(22,1)+1;
        elseif(value >= 132 && value <138)
            h(23,1)=h(23,1)+1;
        elseif(value >= 138 && value <144)
            h(24,1)=h(24,1)+1;
        elseif(value >= 144 && value <150)
            h(25,1)=h(25,1)+1;
        elseif(value >= 150 && value <156)
            h(26,1)=h(26,1)+1;
        elseif(value >= 156 && value <162)
            h(27,1)=h(27,1)+1;
        elseif(value >= 162 && value <168)
            h(28,1)=h(28,1)+1;
        elseif(value >= 168 && value <174)
            h(29,1)=h(29,1)+1;
        elseif(value >= 174 && value <180)
            h(30,1)=h(30,1)+1;
        elseif(value >= 180 && value <186)
            h(31,1)=h(31,1)+1;
        elseif(value >= 186 && value <192)
            h(32,1)=h(32,1)+1;
        elseif(value >= 192 && value <198)
            h(33,1)=h(33,1)+1;
        elseif(value >= 198 && value <204)
            h(34,1)=h(34,1)+1;
        elseif(value >= 204 && value <210)   %%%
            h(35,1)=h(35,1)+1;
        elseif(value >= 210 && value <216)   %%%
            h(36,1)=h(36,1)+1;
        elseif(value >= 216 && value <222)
            h(37,1)=h(37,1)+1;
        elseif(value >= 222 && value <228)
            h(38,1)=h(38,1)+1;
        elseif(value >= 228 && value <234)
            h(39,1)=h(39,1)+1;
        elseif(value >= 234 && value <240)
            h(40,1)=h(40,1)+1;
        elseif(value >= 240 && value <246)
            h(41,1)=h(41,1)+1;
        elseif(value >= 246 && value <252)
            h(42,1)=h(42,1)+1;
        elseif(value >= 252 && value <255)
            h(43,1)=h(43,1)+1;
        end
    end
end

mess='Decoded message is ';
for cindex=1:8
    
    q=tempx1(cindex,1);
    w=tempx1(cindex,1)+1;
    
    
    while(h(q,1) == h(w,1))
        disp('ignoring');
        q=q+1;
        w=w+1;
        
        if( (q>44||q==4) || w>44)
            q=35;
            w=36;
        end
    end
    
    if(h(q,1)>h(w,1))
        mess=strcat(mess,' 1');
        
    else
        mess=strcat(mess,' 0');
    end
end


disp(mess);

disp('The signal inserted was..');
disp(signals);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%cal psnr
%function[psnr1]=testing()


A=imread(real_image);
B=imread('watermarked_image.png');

A=double(A)/255;
B=double(B)/255;



psnr1=sapsnr(A,B);
disp(psnr1);
disp(ti);