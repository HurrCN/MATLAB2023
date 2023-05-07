clc, clear
pkg load control
pkg load image

a = imread('moon.tif');
c = a;
a = double(a);
[m,n] = size(a);
b  = zeros(m,n);
bx = zeros(m,n);
by = zeros(m,n);

% Sobel operator is defined by these two kernels (functional matrices)
Sx  = [-1  0  1;
       -2  0  2;
       -1  0  1];
Sy  = [ 1  2  1;
        0  0  0;
       -1 -2 -1];

for i=2:m-1
  for j=2:n-1
    bx(i,j) = a(i-1,j-1)*Sx(1,1) + a(i-1,j)*Sx(1,2) + a(i-1,j+1)*Sx(1,3)...
            + a(i,j-1)*Sx(2,1)   + a(i,j)*Sx(2,2)   + a(i,j+1)*Sx(2,3)...
            + a(i+1,j-1)*Sx(3,1) + a(i+1,j)*Sx(3,2) + a(i+1,j+1)*Sx(3,3);
    by(i,j) = a(i-1,j-1)*Sy(1,1) + a(i-1,j)*Sy(1,2) + a(i-1,j+1)*Sy(1,3)...
            + a(i,j-1)*Sy(2,1)   + a(i,j)*Sy(2,2)   + a(i,j+1)*Sy(2,3)...
            + a(i+1,j-1)*Sy(3,1) + a(i+1,j)*Sy(3,2) + a(i+1,j+1)*Sy(3,3);
    b(i,j)  = sqrt(((bx(i,j))^2) + ((by(i,j))^2));
  end
end
b = uint8(b);
subplot(1,4,1),imshow(c),title('before')
subplot(1,4,2),imshow(bx),title('Bx')
subplot(1,4,3),imshow(by),title('By')
subplot(1,4,4),imshow(b),title('B result')

