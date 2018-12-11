function [outputArg1] = applyFirstOrderGauss(img)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
% img = read_image('',imageName)
load filters/filters
gaussX = first_order_gaussian_filter_1d_length5;
gaussY = first_order_gaussian_filter_1d_length5.';
img_gaussX = conv2(img, gaussX,'same')
img_gaussY = conv2(img, gaussY,'same')
m = magnitude(img_gaussX,img_gaussY)
outputArg1 = imcomplement(m);
end
