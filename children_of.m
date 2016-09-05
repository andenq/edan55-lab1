function [ child1, child2 ] = children_of( parent )
%PARENT_OF Return index of parent for this child
    
    child1 = bitshift(parent, 1);
    child2 = child1+1;
end

