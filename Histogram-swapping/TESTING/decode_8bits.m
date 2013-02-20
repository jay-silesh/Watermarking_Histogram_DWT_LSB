clc;

clearvars -except tempx1;


real_image='IE2.jpg';

dimage=imread('watermarked_image.png');
imshow(dimage);
%dimage=image_temp;


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
       % disp('ignoring');
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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%cal psnr
%function[psnr1]=testing()

A=imread(real_image);
B=imread('watermarked_image.png');

A=double(A)/255;
B=double(B)/255;



psnr1=sapsnr(A,B);
disp(psnr1);
