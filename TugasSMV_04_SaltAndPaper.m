%
clc, clear
a = imread('potret_hurricane_graynoise.png');
a = rgb2gray(a);
c = a;
a = double(a);
[m,n] = size(a);
b = zeros(m,n);

for i=2:m-1
  for j=2:n-1
    Sigma = a(i-1,j-1) + a(i-1,j) + a(i-1,j+1) + a(i,j-1) + a(i,j+1) + ...
            a(i+1,j-1) + a(i+1,j) + a(i+1,j+1);
    if (Sigma < 4*255)
      b(i,j) = 0;
    elseif (Sigma > 6*255)
      b(i,j) = 255;
    else
      b(i,j) = a(i,j);
    end
  end
end
imshow(b)
%{
clc, clear
a = imread('potret_hurricane_graynoise.png');
a = rgb2gray(a);
c = a;
%a = double(a);
[m,n] = size(a);
b = zeros(m,n);

for i=2:m-1
  for j=2:n-1
    Sigma = a(i-1,j-1) + a(i-1,j) + a(i-1,j+1) + a(i,j-1) + a(i,j+1) + ...
            a(i+1,j-1) + a(i+1,j) + a(i+1,j+1);
    if (Sigma > 6*255)
      b(i,j) = 255;
    else
      b(i,j) = a(i,j);
    end
  end
end
imshow(c)
figure,imshow(b)
%}
