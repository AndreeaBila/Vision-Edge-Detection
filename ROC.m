function [outputArg1,outputArg2] = ROC(img1,img2)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
TP = 0;
TN = 0;
FN = 0;
FP = 0;

for row=1:size(img1)
    for col=1:size(img1)
        if img1(row,col) == 0 && img2(row,col) == 0
            TP = TP + 1
        end
        if img1(row,col) == 0 && img2(row,col) == 1
            FP = FP + 1
        end
        if img1(row,col) == 1 && img2(row,col) == 0
            FN = FN + 1
        end
        if img1(row,col) == 1 && img2(row,col) == 1
            TN = TN + 1
        end
    end
end
    
sensitivity = TP/(TP + FN);
specificity = TN/(TN + FP);

outputArg1 = sensitivity;
outputArg2 = specificity;
end
