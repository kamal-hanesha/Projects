clc;
close all;
clear all;
a=imread('leaves.jpg');
b=imresize(a,[500,500]);
con=im2bw(a);
x=imadd(b,100);
y=imsubtract(b,100);
e=imadd(b,b);
f=imsubtract(b,b);
g=imcomplement(con);
h=imdivide(a,5);
i=immultiply(a,2.5);
sgtitle("Image Arithmetic")
subplot(2,5,1);imshow(a);title("Original Image 1");
subplot(2,5,2);imshow(b);title("A:Resized original image1");
subplot(2,5,3);imshow(x);title('A+100');
subplot(2,5,4);imshow(y);title('A-100');
subplot(2,5,5);imshow(e);title("Addition of A&A");
subplot(2,5,6);imshow(f);title("Subtraction of A&A");
subplot(2,5,7);imshow(con);title("binary image ");
subplot(2,5,8);imshow(g);title("Image Complement ");
subplot(2,5,9);imshow(h);title("Image division by 5");
subplot(2,5,10);imshow(i);title("Image multiplication by 2.5");