clc, clear
pkg load image
pkg load control

a = imread('rice.jpg');
% Do automatic thresholding aka Otsu
b = im2bw(a,graythresh(a));
c = bwconncomp(b,4);
d = labelmatrix(c);
e = label2rgb(d);
imshow(e)

