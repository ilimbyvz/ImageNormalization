% Resmin piksellerini normalize etme

im = imread('g1.jpg');
gray=rgb2gray(im); %griye �evirme
graydouble=double(gray); % pikselleri double t�r�ne �evirme
gray_norm=imnorm(graydouble,0,1);

imshow(gray_norm);

function normalized = imnorm(im, x, y)

     % Normalize etme [0, 1]:
     
     m = min(im(:));
     range = max(im(:)) - m;
     imno1 = (im - m) / range;

     % �l�ekleme [x,y]:
     range2 = y - x;
     normalized = (imno1*range2) + x;
end