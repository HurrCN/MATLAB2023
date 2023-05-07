clc, clear, close all
pkg load control
pkg load image
ax = imread('potret_hurricane_wavy.png');
ax = rgb2gray(ax);
bx = fft2(ax);
cx = fftshift(bx);
figure,imshow(log(abs(cx)),[]),title('Wavy')
