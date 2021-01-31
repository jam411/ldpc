H = [...
    1 0 0 1 ; ...
    0 1 1 0 ; ...
    0 0 1 1];

[m,n] = size(H);
M     = cell(1,m);
N     = cell(1,n);

for j = 1:m
    M{j} = find( H(j,:) == 1 );
end
class(M{1})
for i = 1:n
    N{i} = find( H(:,i) == 1 )';
end

Q = zeros(m,n);

for i = 1:n
    fprintf("%d",1);
    for k = N{i}
        Q(k,i) = l(i)
    end
end

