result = zeros(1, rounds);
N = 7;
rounds = 10000;

for i = 1:rounds
    tree = zeros(1, N);
    while sum(tree) ~= N
        
        index = floor(N*rand(1)+1);
%         while tree(index)
%             index = floor(N*rand(1)+1);
%             result(i) = result(i) + 1;
%         end
        
        tree = mark(tree, index);
        result(i) = result(i) + 1;
    end
end

special_print(result);

% histogram(result)