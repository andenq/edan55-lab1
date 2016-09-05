function [ sibling ] = sibling_to( index )
    sibling = index - bitshift(bitand(index, 1), 1) + 1;
end

