clear
a=imread('guffy2.jpg');
b=fft2(a);
%figure,imshow(b)
c=fftshift(b);
imshow(log(abs(c)),[])