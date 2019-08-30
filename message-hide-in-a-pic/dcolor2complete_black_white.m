clc;
clear;
image=imread('timg1.jfif');
image2=rgb2gray(image);
a=double(image2);
for i=1:850
    for j=1:1280
        if a(i,j)>127
            a(i,j)=255;
        else
            a(i,j)=0;
        end
    end
end
figure(1);
imwrite(mat2gray(a),'new.tif');
image=imread('new.tif');
imshow(image);