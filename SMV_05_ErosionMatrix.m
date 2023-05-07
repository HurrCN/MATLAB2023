clc, clear all
a = [1 1 1 1 1 1;
     1 1 1 1 0 0;
     1 1 1 1 0 0;
     1 1 1 0 0 0];
[m,n] = size(a);
b = zeros(m,n);

for i=2:m-1
  for j=2:n-1
    Sigma = a(i-1,j-1) + a(i-1,j) + a(i-1,j+1) + a(i,j-1) + a(i,j+1) + ...
            a(i+1,j-1) + a(i+1,j) + a(i+1,j+1);
    if Sigma < 8
      b(i,j) = 0;
    else
      b(i,j) = a(i,j);
    end
  end
end
subplot(1,2,1),imshow(a),title('Before Erosion')
subplot(1,2,2),imshow(b),title('After Erosion')
