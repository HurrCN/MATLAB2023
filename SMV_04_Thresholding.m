%{
PENGGUNAAN MATLAB UNTUK SISTEM MACHINE VISION
MATERI IMAGE PROCESSING
Diprogram oleh Muhammad Hurricane 1906356191
reach me out: < muhammad.hurricane@gmail.com >
              < github.com/HurrCN >

Topic: Image Grayscale Thresholding
Date : Mar 7, 2023
%}
clc, clear
a = imread('moon.tif');
[m,n] = size(a);
threshold = 150;
for i=1:m
  for j=1:n
    if(a(i,j) < threshold)
      b(i,j) = 0;
    else
      b(i,j) = 255;
    end
  end
end
subplot(1,2,1),imshow(a),title('Before Thresholding')
subplot(1,2,2),imshow(b),title('After Thresholding')
%imshow(b)
imwrite(b,'moonThresholded.jpg','quality',100)
