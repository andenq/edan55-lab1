% N = 1023;
% rounds = 100;

result = zeros(1, rounds);

for i = 1:rounds
    tree = zeros(1, N);
    while sum(tree) ~= N
        index = floor(N*rand(1)+1);
        while tree(index)            
            index = floor(N*rand(1)+1);
            result(i) = result(i) + 1;
        end
        
        tree = mark(tree, index);
%         new_tree = mark(tree, index);
%         plot_tree(new_tree, tree, index);
%         tree = new_tree;
%         pause(0.001);
%          waitforbuttonpress;
        result(i) = result(i) + 1;
    end
end

special_print(result);

% histogram(result)