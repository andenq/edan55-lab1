function [ tree, z, zlen] = mark_R3( tree, index, z, zlen )
    tree(index) = 1;
    z(index) = z(zlen);
    zlen = zlen - 1;
    
    if index ~= 1
        parent = parent_of(index);
        sibling = sibling_to(index);
        tp = tree(parent);
        
        if xor(tree(sibling), tp)
            if tp
                [tree, z, zlen] = mark(tree, sibling, z, zlen);
            else
                tree = mark(tree, parent);
            end
        end
    end
    
    [child1, child2] = children_of(index);
    if child1 < numel(tree) && xor(tree(child1), tree(child2))
        if tree(child1)
            tree = mark(tree, child2);
        else
            tree = mark(tree, child1);
        end
    end
end