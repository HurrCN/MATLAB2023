clc, clear
pkg load control
pkg load image
a = imread('potret_hurricane.png');
a = rgb2gray(a);
c = a;
a = double(a);
[m,n] = size(a);
b = zeros(m,n);

for i=2:m-1
  for j=2:n-1
    Sigma = a(i-1,j-1) + a(i-1,j) + a(i-1,j+1) + a(i,j-1) + a(i,j+1) + ...
            a(i+1,j-1) + a(i+1,j) + a(i+1,j+1);
    if (Sigma < (100*8))
      b(i,j) = 0;
    else
      b(i,j) = a(i,j);
    end
  end
end
imshow(b)
imwrite(b,'potret_hurricane_eroded.jpg')
%{
subplot(1,3,1),imshow(c),title('Before Double')
subplot(1,3,2),imshow(a),title('After Double, Before Erosion')
subplot(1,3,3),imshow(b),title('After Erosion')
%imwrite(b,'moonEroded.jpg')
%}
