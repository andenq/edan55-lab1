function [ tree ] = mark( tree, index )
    tree(index) = 1;
    
    if index ~= 1
        parent = parent_of(index);
        [child1, child2] = children_of(parent);

        if tree(child1) && tree(child2)
            tree = mark(tree, parent);
        end

        if tree(child1) && tree(parent) && ~tree(child2)
            tree = mark(tree, child2);
        end

        if tree(child2) && tree(parent) && ~tree(child1)
            tree = mark(tree, child1);
        end
    end
    
    [child1, child2] = children_of(index);
    if child1 < numel(tree) && child2 <= numel(tree)
        if tree(child1) && ~tree(child2)
            tree = mark(tree, child2);
        end

        if tree(child2) && ~tree(child1)
            tree = mark(tree, child1);
        end
    end
end