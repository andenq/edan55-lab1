function [ ] = plot_tree( tree, old_tree, new_index )
%plot_tree Special function for plotting tree's using matlabs treeplot
% old_tree and new_index are optional but will, if supplied, help
% see how the tree is changing.

    N = numel(tree);
    matlab_tree = generate_tree(N);
    [x, y] = treelayout(matlab_tree);

    x = x';
    y = y';

    treeplot(matlab_tree);
    hold on;

    ones_array = find(tree);
    plot(x(ones_array,1), y(ones_array,1), 'r.','MarkerSize', 20);
    
    if exist('old_tree')
        % find nodes that have been modifed
        new_ones_array = setdiff(ones_array, find(old_tree));
        plot(x(new_ones_array,1), y(new_ones_array,1), 'b.','MarkerSize', 20);
    end
    
    if exist('new_index')
        % mark the node that started the cascade
        plot(x(new_index,1), y(new_index,1), 'g.','MarkerSize', 20);
    end

    hold off;
end

