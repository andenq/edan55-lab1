N = 7;

matlab_tree = generate_tree(N);
[x, y] = treelayout(matlab_tree);

x = x';
y = y';

treeplot(matlab_tree);
hold on;

ones_array = find(tree);

plot(x(ones_array,1), y(ones_array,1), 'r.','MarkerSize', 20);

hold off;