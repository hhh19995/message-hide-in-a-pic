clc;
clear;
image=imread('hided.tif');%the picture hides mistery
R=image(:,:,1);
rlt=rand(850,1280);
for i=1:850
    for j=1:1280
        if mod(R(i,j),2)==1
            rlt(i,j)=255;
        else
            rlt(i,j)=0;
        end
    end
end

figure(1);
imwrite(mat2gray(rlt),'result.tif');
imshow(imread('result.tif'));
