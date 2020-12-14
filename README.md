# GaussianFiltering

Gaussian filter takes image, filter size and standard deviation as an input.

Gaussian Filter is used to blur the image. It is used to reduce the noise 
and the image details. On convolution of the local region and the Gaussian 
kernel gives the highest intensity value to the center part of the local 
region. The remaining pixels have less intensity as the distance from the 
center increases.

In test script, first noise has been produced with normalized random normal
distribution. Then added to image. Measuring effectiveness of smoothing is 
desired to perform. To compute gaussian filtering of image, a new m function 
has ben created, which is “gaussian()” function. To prevent any size crashes, 
code won’t allow to user run the test script with given even numbered 
filtered size to gaussian function with this code snippet.

