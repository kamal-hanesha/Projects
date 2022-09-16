clc;
clear all;
close all;
a=imread('rose.jpg');
[r g b]=imsplit(a);
sgtitle("R G B Components of an image");
subplot(2,2,1);imshow(a);title("Original image");
r(:,:,1)=r;
r(:,:,2)=0;
r(:,:,3)=0;
subplot(2,2,2);imshow(r);title("R component");
gr(:,:,2)=g;
gr(:,:,1)=0;
gr(:,:,3)=0;
subplot(2,2,3);imshow(gr);title("G component")
bl(:,:,3)=b;
bl(:,:,2)=0;
bl(:,:,1)=0;
subplot(2,2,4);imshow(bl);title("B component");