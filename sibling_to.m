function [ sibling ] = sibling_to( index )
    sibling = index - 2 * mod(index, 2) + 1;

end

