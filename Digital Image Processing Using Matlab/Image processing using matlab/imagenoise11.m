clc;
close all;
clear all;
im=imread("rose.jpg");
n1=imnoise(im,'gaussian');
n2=imnoise(im,'salt & pepper');
e=rgb2gray(n1);
f=rgb2gray(n2);
c1=wiener2(e,[5 5]);
c2=medfilt2(f,[3 3]);
subplot(2,3,1);imshow(im);title("Original image");
sgtitle("Noise in images and its reduction");
subplot(2,3,2);imshow(e);title("Gray scale image of original image")
subplot(2,3,3);imshow(n1);title("Added gausssian noise");
subplot(2,3,4);imshow(n2);title("Added  salt and pepper noise");
subplot(2,3,5);imshow(c1);title("Removed guassian noise")
subplot(2,3,6);imshow(c2);title("Removed salt and pepper noise");
