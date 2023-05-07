% MACHINE VISION SYSTEM
% ASSIGNMENT 04 - EDGE
% Name  : Muhammad Hurricane
% NPM   : 1906356191

% Clear command window and variables
clc, clear
% Read image from given file
a = imread('potret_hurricane.png');
% Transform the data to "Double"
b = rgb2gray(a);
b = double(b);
% Retrieve size of the image in mxn
[m,n] = size(b);
% Generate matrix of zeros for the results
c   = zeros(m,n);
res = zeros(m,n);

% Do the thresholding first
threshold = 140;
for i=1:m
  for j=1:n
    % Inspect each pixels to do thresholding
    if(b(i,j) < threshold)
      c(i,j) = 0;
    else
      c(i,j) = 255;
    end
  end
end

% Iterate the result
for i=2:m-1
  for j=2:n-1
    % Suppose we have local array 3x3 contains values that represent the image's pixels
    % Then, we inspect and sum the pixels that surround the center of the array
    Sigma = c(i-1,j-1) + c(i-1,j) + c(i-1,j+1) + c(i,j-1) + c(i,j+1) + ...
            c(i+1,j-1) + c(i+1,j) + c(i+1,j+1);
    % Check whether the sum fulfills the given condition or not, and actions offered
    if (Sigma == (255*8))
      res(i,j) = 0;
    else
      res(i,j) = c(i,j);
    end
  end
end

% Display the result
subplot(2,2,1),imshow(a),title('Original Image')
subplot(2,2,2),imshow(b),title('Converted to Gray')
subplot(2,2,3),imshow(c),title('After Thresholding')
subplot(2,2,4),imshow(res),title('After Edging')
imwrite(res,'potret_hurricane_edged.jpg')
