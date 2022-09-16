x=imread("dots.png");
y=im2bw(x);
se=strel('line',11,90);
z=imerode(y,se);
d=imdilate(y,se);
sgtitle(" Morphological Image Processing :-erosion and dilation");
subplot(1,3,1);imshow(y);title("binary image");
subplot(1,3,2);imshow(z);title("after erosion");
subplot(1,3,3);imshow(d);title('after dilation');