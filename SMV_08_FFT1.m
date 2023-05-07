clc, clear
pkg load image

a = imread('potret_hurricane.png');
a = rgb2gray(a);
imshow(a)
b = fft2(a);
figure,imshow(b)

figure,imshow(log(abs(b)), [])
c = fftshift(b);
figure,imshow(log(abs(c)), [])
d = ifftshift(c);
figure,imshow(log(abs(d)), [])
e = ifft2(d);
figure,imshow(e, [])

