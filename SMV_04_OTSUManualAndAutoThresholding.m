%{
%% Manual Thresholding
clc, clear
a = imread('moon.tif');
b = 128/256;
c = im2bw(a,b);
imshow(c);
%}

%% Automatic Thresholding (OTSU)
clc, clear
a = imread('moon.tif');
b = graythresh(a);
c = im2bw(a,b);
imshow(c);
