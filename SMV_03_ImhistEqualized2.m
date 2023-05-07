clc, clear
a = imread('balloons.tif');
imshow(a)
b = rgb2gray(a);
#k=histeq(b);
#figure,imshow(k)
#figure,imhist(k)
ylim('auto')
g=histeq(b,256);
figure,imshow(g)
figure,imhist(g)
ylim('auto')
