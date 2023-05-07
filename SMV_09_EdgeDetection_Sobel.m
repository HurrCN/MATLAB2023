clc, clear
pkg load control
pkg load image

a = imread('moon.tif');
%a = rgb2gray(a);
a = double(a);
[m,n] = size(a);
b = zeros(m,n);

% Sobel operator is defined by these two kernels (functional matrices)
Sx  = [-1  0  1;
       -2  0  2;
       -1  0  1];
Sy  = [ 1  2  1;
        0  0  0;
       -1 -2 -1];
local_aSx = zeros(3,3);
local_aSy = zeros(3,3);
global_aSx = zeros(m,n);
global_aSy = zeros(m,n);

for i=2:m-1
  for j=2:n-1
    % For local a * Sx
    local_aSx(1,1) = a(i-1,j-1)*Sx(1,1);
    local_aSx(1,2) = a(i-1,j)*Sx(1,2);
    local_aSx(1,3) = a(i-1,j+1)*Sx(1,3);
    local_aSx(2,1) = a(i,j-1)*Sx(2,1);
    local_aSx(2,2) = a(i,j)*Sx(2,2);
    local_aSx(2,3) = a(i,j+1)*Sx(2,3);
    local_aSx(3,1) = a(i+1,j-1)*Sx(3,1);
    local_aSx(3,2) = a(i+1,j)*Sx(3,2);
    local_aSx(3,3) = a(i+1,j+1)*Sx(3,3);
    % For local a * Sy
    local_aSy(1,1) = a(i-1,j-1)*Sy(1,1);
    local_aSy(1,2) = a(i-1,j)*Sy(1,2);
    local_aSy(1,3) = a(i-1,j+1)*Sy(1,3);
    local_aSy(2,1) = a(i,j-1)*Sy(2,1);
    local_aSy(2,2) = a(i,j)*Sy(2,2);
    local_aSy(2,3) = a(i,j+1)*Sy(2,3);
    local_aSy(3,1) = a(i+1,j-1)*Sy(3,1);
    local_aSy(3,2) = a(i+1,j)*Sy(3,2);
    local_aSy(3,3) = a(i+1,j+1)*Sy(3,3);
    % Constructing Global Matrix of a*Sx
    global_aSx(i-1,j-1) = global_aSx(i-1,j-1) + local_aSx(1,1);
    global_aSx(i-1,j)   = global_aSx(i-1,j)   + local_aSx(1,2);
    global_aSx(i-1,j+1) = global_aSx(i-1,j+1) + local_aSx(1,3);
    global_aSx(i,j-1)   = global_aSx(i,j-1)   + local_aSx(2,1);
    global_aSx(i,j)     = global_aSx(i,j)     + local_aSx(2,2);
    global_aSx(i,j+1)   = global_aSx(i,j+1)   + local_aSx(2,3);
    global_aSx(i+1,j-1) = global_aSx(i+1,j-1) + local_aSx(3,1);
    global_aSx(i+1,j)   = global_aSx(i+1,j)   + local_aSx(3,2);
    global_aSx(i+1,j+1) = global_aSx(i+1,j+1) + local_aSx(3,3);
    % Constructing Global Matrix of a*Sy
    global_aSy(i-1,j-1) = global_aSy(i-1,j-1) + local_aSy(1,1);
    global_aSy(i-1,j)   = global_aSy(i-1,j)   + local_aSy(1,2);
    global_aSy(i-1,j+1) = global_aSy(i-1,j+1) + local_aSy(1,3);
    global_aSy(i,j-1)   = global_aSy(i,j-1)   + local_aSy(2,1);
    global_aSy(i,j)     = global_aSy(i,j)     + local_aSy(2,2);
    global_aSy(i,j+1)   = global_aSy(i,j+1)   + local_aSy(2,3);
    global_aSy(i+1,j-1) = global_aSy(i+1,j-1) + local_aSy(3,1);
    global_aSy(i+1,j)   = global_aSy(i+1,j)   + local_aSy(3,2);
    global_aSy(i+1,j+1) = global_aSy(i+1,j+1) + local_aSy(3,3);
  end
end

for i=1:m
  for j=1:n
    b(i,j) = sqrt(((global_aSx(i,j))^2) + ((global_aSy(i,j)^2)));
    disp([b(i,j)]);
  end
end
imshow(b)
