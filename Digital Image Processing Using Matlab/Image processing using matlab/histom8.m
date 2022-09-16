clc;
close all;
clear all;
im1=imread("lc.jpeg");
ref=imread("hc.jpeg");
J=imhistmatch(im1,ref);
sgtitle("Histogram Matching");
subplot(3,2,1);imshow(im1);title("low contrast image");
subplot(3,2,2);histogram(im1);title("histogram of low contrast image");
subplot(3,2,3);imshow(ref);title("high contrast image for reference");
subplot(3,2,4);histogram(ref);title("Reference histogram");
subplot(3,2,5);imshow(J);title("Image after histogram matching");
subplot(3,2,6);histogram(J);title("histogram of output image")