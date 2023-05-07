%{
PENGGUNAAN MATLAB UNTUK SISTEM MACHINE VISION
MATERI IMAGE PROCESSING
Diprogram oleh Muhammad Hurricane 1906356191
reach me out: < muhammad.hurricane@gmail.com >
              < github.com/HurrCN >

Topic: Image Grayscale Slicing
Date : Mar 7, 2023
%}
clc, clear
a = imread('moon.tif');
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
imwrite(b,'moonSliced.tif', 'quality', 100)
