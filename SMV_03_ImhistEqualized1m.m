clc, clear
a = imread('balloons.tif');
imshow(a)
b = rgb2gray(a);
k=histeq(b);
figure,imshow(k)
figure,imhist(k)
