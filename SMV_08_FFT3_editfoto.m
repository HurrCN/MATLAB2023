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
%{
[m,n]=size(c);
d = c;
d(430:450,360:370) = 2;
d(420:440,500:510) = 2;
figure,imshow(log(abs(d)),[])
e=ifftshift(d);
f=real(ifft2(e));
figure,imshow(log(abs(f)),[])
%}


%{
h=zeros(m,n);
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
%}
