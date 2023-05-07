clc, clear
a = imread('moon.tif');
d = a;
a = double(a);
[m,n] = size(a);
b = zeros(m,n);

h = [0  -1  0;
     -1   4  -1;
     0  -1  0];

for i=2:m-1
  for j=2:n-1
    b(i,j) = a(i-1,j-1)*h(1,1) + a(i-1,j)*h(1,2) + a(i-1,j+1)*h(1,3)...
           + a(i,j-1)*h(2,1)   + a(i,j)*h(2,2)   + a(i,j+1)*h(2,3)...
           + a(i+1,j-1)*h(3,1) + a(i+1,j)*h(3,2) + a(i+1,j+1)*h(3,3);
  end
end
c = b;
b = uint8(b);
e = d-b; % hasil = Ori-laplace = d - b yak
subplot(2,3,1),imshow(d),title('Before Double A')
subplot(2,3,2),imshow(a),title('After Double A, Before Mask')
subplot(2,3,3),imshow(c),title('After Mask, Before Uint')
subplot(2,3,4),imshow(b),title('After Uint, Before Substract')
subplot(2,3,5),imshow(e),title('After Substract')

