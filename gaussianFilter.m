%===================  Filtering Image with Gaussian ====================%


function [Output_Image] = gaussianFilter(img,flt_sz,SD)

% Here img is the input image for filtering and flt_sz is the filter size
% for applying to image
% SD is the standard deviation for Gaussian Kernel
if mod(flt_sz,2)==0
    printf('Please re-run the code and enter odd numbered filter size');
end

Sz = (flt_sz-1)*0.5; 

[x,y]=meshgrid(-(Sz/2):(Sz/2),-(Sz/2):(Sz/2));

% Applying Gaussian both in the x and y direction
Exp_comp = -(x.^2+y.^2)/(2*SD*SD);
mask = exp(Exp_comp)/(2*pi*SD*SD);

Output_Image=img;

% Padding Image for preventing any size crashes
img = padarray(img,[Sz Sz]);

% Also tunning sizes for same reason

m = size(x,1)-1;
n = size(y,1)-1;

% Filtering image with convolution

for i = 1:size(img,1)-m
    for j =1:size(img,2)-n
        temp = img(i:i+m,j:j+m).*mask;
        Output_Image(i,j)=sum(temp(:));
    end
end
end