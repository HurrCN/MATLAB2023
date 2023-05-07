clc, clear, close all
pkg load control
pkg load image

img = imread('moon.tif');
[m,n] = size(img);

i = input("Find row : ");
j = input("Find col : ");

if i>=2 && i<=m-1 && j>=2 && j<=n-1
  disp(['a = ', num2str(img(i-1,j-1))]);
  disp(['b = ', num2str(img(i-1,j))]);
  disp(['c = ', num2str(img(i-1,j+1))]);
  disp(['d = ', num2str(img(i,j-1))]);
  disp(['e = ', num2str(img(i,j+1))]);
  disp(['f = ', num2str(img(i+1,j-1))]);
  disp(['g = ', num2str(img(i+1,j))]);
  disp(['h = ', num2str(img(i+1,j+1))]);
end

if i==1 && j>=2 && j<=n-1
  disp(['a = ', 'not available']);
  disp(['b = ', 'not available']);
  disp(['c = ', 'not available']);
  disp(['d = ', num2str(img(i,j-1))]);
  disp(['e = ', num2str(img(i,j+1))]);
  disp(['f = ', num2str(img(i+1,j-1))]);
  disp(['g = ', num2str(img(i+1,j))]);
  disp(['h = ', num2str(img(i+1,j+1))]);
end

if i==m && j>=2 && j<=n-1
  disp(['a = ', num2str(img(i-1,j-1))]);
  disp(['b = ', num2str(img(i-1,j))]);
  disp(['c = ', num2str(img(i-1,j+1))]);
  disp(['d = ', num2str(img(i,j-1))]);
  disp(['e = ', num2str(img(i,j+1))]);
  disp(['f = ', 'not available']);
  disp(['g = ', 'not available']);
  disp(['h = ', 'not available']);
end

if j==1 && i>=2 && i<=m-1
  disp(['a = ', 'not available']);
  disp(['b = ', num2str(img(i-1,j))]);
  disp(['c = ', num2str(img(i-1,j+1))]);
  disp(['d = ', 'not available']);
  disp(['e = ', num2str(img(i,j+1))]);
  disp(['f = ', 'not available']);
  disp(['g = ', num2str(img(i+1,j))]);
  disp(['h = ', num2str(img(i+1,j+1))]);
end

if j==n && i>=2 && i<=m-1
  disp(['a = ', num2str(img(i-1,j-1))]);
  disp(['b = ', num2str(img(i-1,j))]);
  disp(['c = ', 'not available']);
  disp(['d = ', num2str(img(i,j-1))]);
  disp(['e = ', 'not available']);
  disp(['f = ', num2str(img(i+1,j-1))]);
  disp(['g = ', num2str(img(i+1,j))]);
  disp(['h = ', 'not available']);
end

if i==1 && j==1
  disp(['a = ', 'not available']);
  disp(['b = ', 'not available']);
  disp(['c = ', 'not available']);
  disp(['d = ', 'not available']);
  disp(['e = ', num2str(img(i,j+1))]);
  disp(['f = ', 'not available']);
  disp(['g = ', num2str(img(i+1,j))]);
  disp(['h = ', num2str(img(i+1,j+1))]);
end

if i==m && j==1
  disp(['a = ', 'not available']);
  disp(['b = ', num2str(img(i-1,j))]);
  disp(['c = ', num2str(img(i-1,j+1))]);
  disp(['d = ', 'not available']);
  disp(['e = ', num2str(img(i,j+1))]);
  disp(['f = ', 'not available']);
  disp(['g = ', 'not available']);
  disp(['h = ', 'not available']);
end

if i==1 && j==n
  disp(['a = ', 'not available']);
  disp(['b = ', 'not available']);
  disp(['c = ', 'not available']);
  disp(['d = ', num2str(img(i,j-1))]);
  disp(['e = ', 'not available']);
  disp(['f = ', num2str(img(i+1,j-1))]);
  disp(['g = ', num2str(img(i+1,j))]);
  disp(['h = ', 'not available']);
end

if i==m && j==n
  disp(['a = ', num2str(img(i-1,j-1))]);
  disp(['b = ', num2str(img(i-1,j))]);
  disp(['c = ', 'not available']);
  disp(['d = ', num2str(img(i,j-1))]);
  disp(['e = ', 'not available']);
  disp(['f = ', 'not available']);
  disp(['g = ', 'not available']);
  disp(['h = ', 'not available']);
end
