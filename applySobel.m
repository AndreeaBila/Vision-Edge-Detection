function [outputArg1] = applySobel(img)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
% img = read_image('',imageName)
load filters/filters
img_sobelX = conv2(img,sobelX,'same')
img_sobelY = conv2(img,sobelY,'same')
m = magnitude(img_sobelX,img_sobelY)
outputArg1 = imcomplement(m);
end