clc, clear, close all
%pkg load control
%pkg load image

disp(['MATLAB FOR MACHINE VISION SYSTEM']);
disp(['Coded by Muhammad Hurricane 1906356191']);
disp(['reach me out: < muhammad.hurricane@gmail.com >']);
disp(['              < github.com/HurrCN >']);
disp(['Topic       : SAD and MAD for Image Recognition']);
disp(['Last Update : May 2, 2023']);
disp(['     ']);

% Source Image
img_s = imread('tennis1.png');
img_s = rgb2gray(img_s);

% Images of Interest
im1 = imread('tennis2.png');
im2 = imread('twitter.png');
im3 = imread('ship.jpg');

im1 = rgb2gray(im1);
im2 = rgb2gray(im2);
im3 = rgb2gray(im3);

[ms,ns] = size(img_s);
[m1,n1] = size(im1);
[m2,n2] = size(im2);
[m3,n3] = size(im2);

% SAD and MAD Algorithm
SAD1 = 0;
col_SAD1 = 0;
for i=1:ms
  for j=1:ns
    SAD1 = double(abs(img_s(i,j) - im1(i,j)));
    col_SAD1 = col_SAD1 + SAD1;
  end
end
disp(['SAD_1 : ', num2str(col_SAD1)]);
MAD_1 = col_SAD1/(ms*ns);
disp(['MAD_1 : ', num2str(MAD_1)]);
disp(['     ']);

SAD2 = 0;
col_SAD2 = 0;
for i=1:ms
  for j=1:ns
    SAD2 = double(abs(img_s(i,j) - im2(i,j)));
    col_SAD2 = col_SAD2 + SAD2;
  end
end
disp(['SAD_2 : ', num2str(col_SAD2)]);
MAD_2 = col_SAD2/(ms*ns);
disp(['MAD_2 : ', num2str(MAD_2)]);
disp(['     ']);

SAD3 = 0;
col_SAD3 = 0;
for i=1:ms
  for j=1:ns
    SAD3 = double(abs(img_s(i,j) - im3(i,j)));
    col_SAD3 = col_SAD3 + SAD3;
  end
end
disp(['SAD_3 : ', num2str(col_SAD3)]);
MAD_3 = col_SAD3/(ms*ns);
disp(['MAD_3 : ', num2str(MAD_3)]);
disp(['     ']);

MAD = [MAD_1; MAD_2; MAD_3];
min_MAD = min(MAD)
which_photo = find(MAD==min(MAD))
