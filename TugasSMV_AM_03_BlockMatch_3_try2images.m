% Block Matching Algorithm 2 images WORKS

clc, clear, close all
%pkg load control
%pkg load image

% Source Image
ims = imread('plane.jpg');
ims = rgb2gray(ims);
[ms,ns] = size(ims);

% Images of Interest
im1 = imread('plane_1.png');
im1 = rgb2gray(im1);
[m1,n1] = size(im1);
%figure,imshow(im1)

SAD = 0;
col_SAD = 0;

%status = 0;
limit = 1.1;
while 1
  for i=1:(m1-ms)
    for j=1:(n1-ns)
      for m=i:i-1+ms
        for n=j:j-1+ns
          SAD = double(abs(im1(m,n) - ims(m-i+1,n-j+1)));
          col_SAD = col_SAD + SAD;
        end
      end
      MAD = col_SAD/(ms*ns);
      Percentage = double((i/(m1-ms))*100);
      %disp(['Scanning progress... ', num2str(Percentage), '%']);
      %
      if MAD <= limit
        disp(['Cursor at (', num2str(i),',', num2str(j),'), ', ' MAD : ', num2str(MAD), ' | status: YES']);
        break
      end
      %{
      if MAD > 1
        status = 0;
        disp(['status: NOT']);
      end
      %}
      %disp(['Cursor at (', num2str(i),',', num2str(j),'), ', ' MAD : ', num2str(MAD)]);
      col_SAD = 0;
      % 'SAD : ', num2str(col_SAD),
    end
  end
end
