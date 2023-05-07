% Low Pass Filter = Smoothening
clc, clear
a = imread('moon.tif');
d = a;
a = double(a);
[m,n] = size(a);
b = zeros(m,n);
%h = 1/9*ones(3,3);
%
h = [1  2  1;
     2  4  2;
     1  2  1];
     %
h = (1/16)*h;

for i=2:m-1
  for j=2:n-1
    %{
    for k=1:3
      for g=1:3
        b(i,j) = a(i+k-2,j+g-2) * h(k,g);
      end
    end
    %}
    %
    b(i,j) = a(i-1,j-1)*h(1,1) + a(i-1,j)*h(1,2) + a(i-1,j+1)*h(1,3)...
           + a(i,j-1)*h(2,1)   + a(i,j)*h(2,2)   + a(i,j+1)*h(2,3)...
           + a(i+1,j-1)*h(3,1) + a(i+1,j)*h(3,2) + a(i+1,j+1)*h(3,3);
           %
  end
end
c = b;
b = uint8(b);
subplot(1,4,1),imshow(d),title('Before Double A')
subplot(1,4,2),imshow(a),title('After Double A, Before Mask')
subplot(1,4,3),imshow(c),title('After Mask, Before Uint')
subplot(1,4,4),imshow(b),title('After Uint')
