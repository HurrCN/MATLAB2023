clc, clear
a = imread('moon.tif');
h = imhist(a);                # ambil pemetaan secara histogram
h1 = h(1:10:256);             # diambil data h(1), h(11), h(21),... h(256)
horz = 1:10:256;              # declare nilai horz adalah horz = 1,11,21,...,256
bar(horz,h1)                  # bikin plot bar dengan x=[horz] dan y=[h1]
axis([0 255 0 15000])         # format: axis([min_x max_x min_y max_y])
set(gca,'xtick',0:50:255)
set(gca,'ytick',0:2000:15000)
