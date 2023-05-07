%% Program Hough Transform
% By Ario SB
% Tgl: 28-11-2013

clear, close all, clc
%pkg load image
%pkg load control
a=imread('bwhorizontalrgb.tif');
figure, imshow(a)
%b = a;
b=rgb2gray(a);
c=edge(b,'canny');
figure, imshow(c)

% Membuat gambar hough transform
[H,T,R]=hough(c,'RhoResolution', 0.1,'ThetaResolution', 0.1);
figure, imshow(H)
figure, imshow(imadjust(mat2gray(H)), 'XData',T,'YData',R,...
                'InitialMagnification', 'fit');
xlabel('\theta'),ylabel('\rho');
axis on, axis normal, hold on;
% pixval;
colormap(hot)

% Mencari puncak hough
P=houghpeaks(H,20,'threshold',ceil(0.3*max(H(:))))
x=T(P(:,2)),y=R(P(:,1));
plot(x,y,'s','color','white');

% Menggambar garis hough
lines=houghlines(c,T,R,P,'FillGap',5,'MinLength',7)
figure,imshow(c),hold on
max_len=0
for k=1:length(lines)
    xy = [lines(k).point1; lines(k).point2]
    plot(xy(:,1),xy(:,2),'LineWidth',2,'Color','green');
end
