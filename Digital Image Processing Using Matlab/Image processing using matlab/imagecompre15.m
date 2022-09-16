clc;
clear all;
close all;
i = imread('clock.jpg');
X=imresize(i,[256,256]);
imwrite(X,"test.jpg");
[cr,bpp] = wcompress('c',X,'wpeppers.wtc','spiht','maxloop',12);
Xc = wcompress('u','wpeppers.wtc');
delete('wpeppers.wtc')
imwrite(Xc,"testc.jpg");
% Display the original and the compressed image
sgtitle("Image Compression");
subplot(1,2,1); imshow(X); title('Original image'); axis square
subplot(1,2,2); imshow(Xc); title('Compressed image'); axis square
info1=imfinfo('test.jpg');
file_size_of_original_image= info1.FileSize
info2=imfinfo('testc.jpg');
file_size_of_compressed_image=   info2.FileSize

 