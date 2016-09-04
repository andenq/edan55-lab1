result = zeros(1, rounds);

for i = 1:rounds
    tree = zeros(1, N);
    while sum(tree) ~= N
        zeroes = find(~tree);
        random = floor(numel(zeroes)*rand(1)+1);
        tree = mark(tree, zeroes(random));
        result(i) = result(i) + 1;
    end
end

special_print(result);

% histogram(result)