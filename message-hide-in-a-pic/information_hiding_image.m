clc;
clear;
image=imread('timg.jfif');%the picture for hiding another picture
R=image(:,:,1);
G=image(:,:,2);
B=image(:,:,3);
hide=imread('new.tif');%the picture which hided
a=double(hide);
for i=1:850
    for j=1:1280
        if a(i,j)==255
            R(i,j)=R(i,j)-mod(R(i,j),2)+1;
        else
            R(i,j)=R(i,j)-mod(R(i,j),2);
        end
    end
end

figure(1);
a2(:,:,1)=R;
a2(:,:,2)=G;
a2(:,:,3)=B;
imwrite(a2,'hided.tif');%the result
img=imread('hided.tif');
imshow(img);