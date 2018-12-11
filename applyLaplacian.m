function [outputArg1] = applyLaplacian(img)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
% img = read_image('',imageName)
load filters/filters
lapX = laplacian;
lapY = laplacian.';
img_lapX = conv2(img, lapX,'same')
img_lapY = conv2(img, lapY,'same')
m = magnitude(img_lapX,img_lapY)
outputArg1 = imcomplement(m);
end
