%{
clc, clear
a = imread('moon.tif');
b = ftt2(a);
c = fftshift(b);
figure,imshow(log(abs(c)), [])
[m,n] = size(c);
h = ones(m,n);
h((1/2)*m-10:(1/2)*m+10, (1/2)*n-30:(1/2)*n-10) = 0;
figure,imshow(h,[])
%}



%
clear
a=imread('guffy2.jpg');
b=fft2(a);
%figure,imshow(b)
c=fftshift(b);
%figure,imshow(log(abs(c)),[])
[m,n]=size(c);
h=ones(m,n);
h(1/2*m-0.5:1/2*m+0.5,1/2*n-4.5:1/2*n-3.5)=0;
h(1/2*m-0.5:1/2*m+0.5,1/2*n+3.5:1/2*n+4.5)=0;
%h(1/2*m-0.5:1/2*m+0.5,1/2*n-0.5:1/2*n+0.5)=0;
%imshow(h,[])
d=c.*h;
%figure,imshow(log(abs(d)),[])
e=ifftshift(d);
f=real(ifft2(e));
%imshow(f,[])
%imshow(a)
subplot(2,3,1),imshow(a),title('Original')
subplot(2,3,2),imshow(log(abs(b)),[]),title('Fourier-IMG')
subplot(2,3,3),imshow(log(abs(c)),[]),title('Shifted Fourier-IMG')
subplot(2,3,4),imshow(h,[]),title('Add dots as covers')
subplot(2,3,5),imshow(log(abs(d)),[]),title('Dots added to Fourier')
subplot(2,3,6),imshow(log(abs(f)),[]),title('Fixed Result')
%{
subplot(1,5,1),imshow(log(abs(c)),[]),title('1')
subplot(1,5,2),imshow(h,[]),title('2')
subplot(1,5,3),imshow(log(abs(d)),[]),title('3')
subplot(1,5,4),imshow(f,[]),title('4')
subplot(1,5,5),imshow(a),title('5')
%}


