result = zeros(1, rounds);

for i = 1:rounds
    tree = zeros(1, N);
    sequence = knuth_shuffle(1:N);
    for s = sequence
        if tree(s)
           result(i) = result(i) + 1;
           continue
        end
        tree = mark(tree, s);
        result(i) = result(i) + 1;
        
        if sum(tree) == N
            break;
        end
    end
end

special_print(result);

% histogram(result)