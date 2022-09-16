clc;
close all;
clear;
a=imread('flower.jpg');
sgtitle("Image Conversions");
subplot(1,3,1);imshow(a);title("Original Image");
b=rgb2gray(a);    
subplot(1,3,2);imshow(b);title("RGB to gray converted image");
c=im2bw(a);
subplot(1,3,3);imshow(c);title("RGB to binary image")
