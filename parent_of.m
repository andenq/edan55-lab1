function [ parent ] = parent_of( child )
%PARENT_OF Return index of parent for this child
    parent = floor(child/2);
    %parent = bitshift(child, -1);
end