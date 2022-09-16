% clearing the output screen 
clc; 
clear all;
close all;
% reading image's pixel in c 
c = imread('taj.jpeg');
c1=rgb2gray(c);
adjustc=imresize(c1,[256,256]);
% storing image information in cd 
cd = double(adjustc); 
% extracting all bit one by one 
% from 1st to 8th in variable 
% from c1 to c8 respectively 
c1 = mod(cd, 2); c2 = mod(floor(cd/2), 2); 
c3 = mod(floor(cd/4), 2); c4 = mod(floor(cd/8), 2); 
c5 = mod(floor(cd/16), 2); c6 = mod(floor(cd/32), 2); 
c7 = mod(floor(cd/64), 2); c8 = mod(floor(cd/128), 2); 
% combining image again to form equivalent to original grayscale image 
cc =  (2*(2*(2* (2*(2 * (2 * (2 * c8 + c7) + c6) + c5)+c4)+c3)+c2)+c1) ; 
figure;
sgtitle("Bit Plane slicing");
subplot(2, 5, 1); imshow(adjustc); title('Original Image'); 
% plotting binary image having extracted bit from 1st to 8th 
% in subplot from 2nd to 9th 
subplot(2,5,2);imshow(c1); title('bit plane 1');
subplot(2,5,3);imshow(c2); title('bit plane 2');
subplot(2,5,4);imshow(c3);title('bit plane 3');
subplot(2,5,5);imshow(c4); title('bit plane 4');
subplot(2,5,6);imshow(c5); title('bit plane 5');
subplot(2,5,7);imshow(c6); title('bit plane 6');
subplot(2,5,8);imshow(c7); title('bit plane 7');
subplot(2,5,9);imshow(c8); title('bit plane 8'); 
% plotting recombined image in 10th subplot 
subplot(2, 5, 10); imshow(uint8(cc)); title('Recombined Image'); 

