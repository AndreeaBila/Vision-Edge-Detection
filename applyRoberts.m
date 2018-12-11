function [outputArg1] = applyRoberts(img)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
% img = read_image('',imageName)
load filters/roberts
img_robertsA = conv2(img,robertsA,'same')
img_robertsB = conv2(img,robertsB,'same')
m = magnitude(img_robertsA,img_robertsB)
outputArg1 = imcomplement(m);
end
