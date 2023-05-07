% Edit dulu fotonya
clc,clear
pkg load control
pkg load image
a=imread('potret_hurricane.png');
a = rgb2gray(a);
b=fft2(a);
%figure,imshow(b)
c=fftshift(b);
%figure,imshow(log(abs(c)),[])
figure,imshow(log(abs(c)),[])
[m,n] = size(c);
h = ones(m,n);
%h(430:450,360:370) = 0;
%h(420:440,500:510) = 0;
h(430:450,360:370) = c(430:450,360:370);
h(420:440,500:510) = c(420:440,500:510);
d=c./h;
d(430:450,360:370) = d(430:450,360:370)+255;
d(420:440,500:510) = d(420:440,500:510)+255;
figure,imshow(log(abs(d)),[])
