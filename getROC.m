function [outputArg1,outputArg2,outputArg3,outputArg4,outputArg5] = getROC(img1,img2)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
img1 = rgb2gray(img1);
img1 = imbinarize(img1);
img1Sob = applySobel(img1);
img1Rob = applyRoberts(img1);
img1Fog = applyFirstOrderGauss(img1);
img1Lap = applyLaplacian(img1);
img1Log = applyLapOfGauss(img1);

img2 = imbinarize(imcomplement(img2))
[sens1,spec1] = ROC(img1Sob, img2);
[sens2,spec2] = ROC(img1Rob, img2);
[sens3,spec3] = ROC(img1Fog, img2);
[sens4,spec4] = ROC(img1Lap, img2);
[sens5,spec5] = ROC(img1Log, img2);

outputArg1 = [sens1,spec1];
outputArg2 = [sens2,spec2];
outputArg3 = [sens3,spec3];
outputArg4 = [sens4,spec4];
outputArg5 = [sens5,spec5];
end

