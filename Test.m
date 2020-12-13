clc;
clear all;
close all;

%============================ Gaussian Filter ============================%

resim=input('Please enter number for desired object image\n 1:Duck\n 2:Tennis Ball\n 3:Candy Box\n 4:Cameraman\n 5:Butterfly\n 6:Planes\n');
img = imread(sprintf('%d.png',resim));
[row,col,channel]=size(img);

if channel==3
    img=double(rgb2gray(img));
else
    img=double(img);
end

figure (1)
imshow(uint8(img)), title('Original Image')
set(gcf, 'Units', 'Normalized', 'OuterPosition', [0 0 1 1]);


% To show effect of filter, noise has been added on image
Noise = 64 * randn(row, col); 

% Implementing noise into image
NoisyImage=img+Noise;

% Image filtration 
% Please enter odd numbered filter size. Otherwise you will gel error
% message
Gaussian_Filtered_Image=gaussianFilter(NoisyImage,5,1.75);

figure (2)
title('Gaussian Filtering')
subplot(1,3,1), imshow(uint8(img)), title('Original Image')
subplot(1,3,2), imshow(uint8(NoisyImage)), title('Noisy Image')
subplot(1,3,3), imshow(uint8(Gaussian_Filtered_Image)), title('Filtered Image')

set(gcf, 'Units', 'Normalized', 'OuterPosition', [0 0 1 1]);