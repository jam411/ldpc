clear all

% load matrix H
%load 252-504Gallager.mat H
%load 102-204Gallager2.mat H
%load 102-204Gallager.mat H
%load 252-504PEG.mat H
%load 102-204PEG2.mat H
%load 102-204PEG.mat H
%load 32-16PEG2.mat H
load 32-16Ga.mat H


[m,n] = size(H);
count = 0;

fprintf("calculating ... ")

for i = 1:m
    for j = (i+1):m
        for k = (j+1):m
            h = H(i,:) + H(j,:) + H(k,:);
            %if the number of 2 in h is 3, There is a 6-cycle in this combination.
            if nnz(h==2)
                count = count + 1;
            end
        end
    end
end

fprintf("finish.\n")

fprintf("[%d] of 6-cycles exist.\n", count);