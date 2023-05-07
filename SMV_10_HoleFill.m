clc, clear, close all
pkg load image
pkg load control
a = imread('coin.bmp');
%a = rgb2gray(a);
figure,imshow(a)
b = imfill(a,'holes');
figure,imshow(b)
