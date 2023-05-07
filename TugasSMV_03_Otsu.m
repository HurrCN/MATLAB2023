clc, clear
a = imread('potret_hurricane.png');
b = graythresh(a);
c = im2bw(a,b);
imshow(c);
