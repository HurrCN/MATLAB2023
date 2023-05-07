% Muhammad Hurricane 1906356191
% Tugas 03 Sistem Machine Vision
% More : < muhammad.hurricane@ui.ac.id >
%        < github.com/HurrCN >
% Clear command window and variables
clc, clear
% load libraries for Octave
pkg load control
pkg load image
% import the image
a = imread('potret_hurricane.png');
% convert the image from RGB to Grayscale
a = rgb2gray(a);
% Get the size of the image
[m,n] = size(a);
% Set b as matrix of zeros
b = zeros(m,n);
% Put two threshold values
thres1 = 130;
thres2 = 150;
% Here, i and j are used to construct the image b
% as b is made from transformed a’s pixels
for i=1:m
  for j=1:n
    if(a(i,j) <= thres1 || a(i,j)>= thres2)
      b(i,j) = 0;
    end
    if (a(i,j) > thres1 && a(i,j) < thres2)
      b(i,j) = 255;
    end
  end
end
imshow(b)
%subplot(1,2,1),imshow(a),title('Before Slicing')
%subplot(1,2,2),imshow(b),title('After Slicing')
