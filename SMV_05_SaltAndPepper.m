clc, clear
a = imread('moonThresholded.jpg');
c = a;
a = double(a);
[m,n] = size(a);
b = zeros(m,n);

for i=2:m-1
  for j=2:n-1
    Sigma = a(i-1,j-1) + a(i-1,j) + a(i-1,j+1) + a(i,j-1) + a(i,j+1) + ...
            a(i+1,j-1) + a(i+1,j) + a(i+1,j+1);
    if (Sigma == 0*255)
      b(i,j) = 0;
    elseif (Sigma == 8*255)
      b(i,j) = 255;
    else
      b(i,j) = a(i,j);
    end
  end
end
subplot(1,3,1),imshow(c),title('Before Double')
subplot(1,3,2),imshow(a),title('After Double, Before Erosion')
subplot(1,3,3),imshow(b),title('After Erosion')
imwrite(b,'moonEroded.jpg')
