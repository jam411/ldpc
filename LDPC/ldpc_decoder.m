%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%    Base program from:
%       lecture note Chapter 4, i437e Coding Theory, JAIST 2020
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function chat = ldpc_decoder(H,l,ellmax)
[m,n] = size(H);
M     = cell(1,m);
N     = cell(1,n);

for j = 1:m
    M{j} = find( H(j,:) == 1 );
end
for i = 1:n
    N{i} = find( H(:,i) == 1 )';
end

R = zeros(m,n);
Q = zeros(m,n);
chat = zeros(1,n);
for i = 1:n
    for k = N{i}
        Q(k,i) = l(i);
    end
end

% begin iterations
for ell = 1:ellmax
    % checknode
    for j = 1:m
        for i = M{j}
            e = setdiff(M{j},i);
            R(j,i) = 2 * atanh( prod(tanh(Q(j,e) / 2)) );
        end
    end
    
    % variable node
    for i = 1:n
        for j = N{i}
            e = setdiff(N{i},j);
            Q(j,i) = l(i) + sum( R(e,i) );
        end
    end
    
    % hard decisions
    for i = 1:n
        e = N{i};
        t=l(i);
        t(i) = l(i) + sum( R(e,i) );
        chat(i) = (t(i) < 0);
    end
    
    % syndrome check
    s = mod(chat * H',2);
    if all(s == 0)
        break;
    end
end
end