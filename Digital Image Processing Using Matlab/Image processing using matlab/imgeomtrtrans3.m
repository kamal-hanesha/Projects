
clear all;
close all;
image=imread('lion.jpeg');
r=imrotate(image,145);
t=imtranslate(image,[50,50]);
sgtitle("Geometric transformations of image");
subplot(2,3,1);imshow(image);title('original image');
subplot(2,3,2);imshow(r);title('rotation using function');
subplot(2,3,3);imshow(t);title('translation using function')
tform=affine2d([1 0 0;0 1 0;0 0 1;]);
tform1=affine2d([50 0 0;0 100 0;0 0 1;]);
tform2=affine2d([cosd(45) -sind(45) 0;sind(45) cosd(45) 0;0 0 1;]);
k=imwarp(image,tform);
k1=imwarp(image,tform1);
k2=imwarp(image,tform2);
subplot(2,3,4);imshow(k);title('Identity with affine transformation');
subplot(2,3,5);imshow(k1);title('Scaling with affine transformation')
subplot(2,3,6);imshow(k2);title('Rotation with affine transformation');