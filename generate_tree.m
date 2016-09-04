function [ tree ] = generate_tree( N )
%GENERATE_TREE Generate a helper tree to be able to draw in matlab

    tree = zeros(1, N);
    
    for i = 2:N
        tree(i) = parent_of(i);
    end

end

