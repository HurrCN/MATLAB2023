clc, clear
pkg load image
pkg load control

a = [ 0   0   0   0   0   0   0   0;
      0   1   1   1   1   1   0   0;
      0   1   0   0   0   1   0   0;
      0   1   0   0   0   1   0   0;
      0   1   0   0   1   0   0   0;
      0   1   1   1   0   0   0   0;
      0   0   0   0   0   0   0   0;
      0   0   0   0   0   0   0   0];
% LABELLING: 4-connectivity
b = bwlabel(a,4);
figure
% @jet = library warna warni, @gray = library warna grayscale
c = label2rgb(b, @jet, 'k');
imshow(c)

% LABELLING: 8-connectivity
d = bwlabel(a,8);
figure
% @jet = library warna warni, @gray = library warna grayscale
e = label2rgb(d, @jet, 'r');
imshow(e)
