function [outputArg1] = applyLapOfGauss(img)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
% img = read_image('',imageName)
load filters/filters.mat
lap_1d_gaus = conv2(laplacian,gaussian_filter_1d_length5,'same');
lap_2d_gaus = conv2(lap_1d_gaus,gaussian_filter_1d_length5,'same');
img_log = conv2(img, lap_2d_gaus,'same');
img_zero_crossing = edge(img_log,'zerocross');

outputArg1 = imcomplement(img_zero_crossing);
end

