%{
clc,clear
disp(['MATLAB FOR MACHINE VISION SYSTEM']);
disp(['Coded by Muhammad Hurricane 1906356191']);
disp(['reach me out: < muhammad.hurricane@gmail.com >']);
disp(['              < github.com/HurrCN >']);
disp(['Topic       : Thresholding, Slicing and Otsu Method']);
disp(['Last Update : Mar 21, 2023']);
disp(['     ']);
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
% Show the converted image
imshow(a)
% Make the histogram for the color scale (0 to 255)
figure,imhist(a)
%{
[m,n] = size(a);
threshold = 140;
for i=1:m
  for j=1:n
    if(a(i,j) < threshold)
      b(i,j) = 0;
    else
      b(i,j) = 255;
    end
  end
end
figure,imshow(b)
%}
%}
clc, clear
a = imread('potret_hurricane.png');
[m,n] = size(a);
thres1 = 100;
thres2 = 150;
for i=1:m
  for j=1:n
    if(a(i,j) <= thres1 || a(i,j)>= thres2)
      b(i,j) = 0;
    else
      b(i,j) = 255;
    end
  end
end
subplot(1,2,1),imshow(a),title('Before Slicing')
subplot(1,2,2),imshow(b),title('After Slicing')
