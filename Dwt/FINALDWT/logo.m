function[A logosize]=logo

%reading logo as binary

I=imread('c:\wm\new1.jpg');
I=uint8(I);
level = graythresh(I);
BW = im2bw(I,level);

%imshow(BW);

k=1;
[ rows, cols ] =size(BW);
for i=1:rows
    for j=1:cols
        WW(1,k)=BW(i,j);
        
        k=k+1;
    end
end
logosize=k-1;

A=zeros(1,logosize);
A=double(A);
for m=1:logosize
    if WW(1,m)==0
        A(1,m)=-1;
    else 
        A(1,m)=WW(1,m);
    end
end    

    
