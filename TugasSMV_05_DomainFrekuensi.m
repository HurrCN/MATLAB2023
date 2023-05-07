clc, clear, close all
%pkg load control
%pkg load image

a = imread('potret_hurricane_wavy7.jpg');
%a = rgb2gray(a);

% Turn the picture into fourier image
b = fft2(a);
% Then, shift the fourier image
c = fftshift(b);
% Retrieve size of the image c
[m,n] = size(c)
%imshow(a)
%figure,imshow(log(abs(b)),[])
figure,imshow(log(abs(c)),[])
h = ones(m,n);
x = 150;
h(436:438,414:415) = c(436:438,414:415);
h(436:438,457:458) = c(436:438,457:458);
%h(990:1020,925-x:940-x)=c(990:1020,925-x:940-x);
%h(980:1010,1060+x:1070+x)=c(980:1010,1060+x:1070+x);
%h(1/2*m-0.5:1/2*m+0.5,1/2*n+3.5:1/2*n+4.5)=0;
d=c./h;
figure,imshow(log(abs(d)),[])
e=ifftshift(d);
f=real(ifft2(e));
figure,imshow(log(abs(f)),[])

