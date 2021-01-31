clear all

% load matrix H
load 102-204PEG2.mat H

[m,n] = size(H);
count = 0;

for i = 1:m
    for j = (i+1):m
        h = H(i,:) + H(j,:);
        %if the number of 2 in h is t as t>=2, there is C2t4-cycle in this
        %combination.
        n2 = nnz(h==2);
        if n2 >= 2
            count = count + 1;
        end
    end
end

fprintf("[%d] of 4-cycle exist.\n", count);
