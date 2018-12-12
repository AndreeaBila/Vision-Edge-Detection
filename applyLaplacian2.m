function [outputArg1] = applyLaplacian2(img)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
% img = read_image('',imageName)
load filters/filters
img_lap = conv2(img, laplacian,'same')
img_zero_crossing = edge(img_lap, 'zerocross')
outputArg1 = imcomplement(img_zero_crossing);
end
