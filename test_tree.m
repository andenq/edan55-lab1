N = 7;

matlab_tree = generate_tree(N);
[x, y] = treelayout(matlab_tree);

x = x';
y = y';
name1 = cellstr(num2str((1:N)'));

treeplot(matlab_tree);
hold on;
% text(x(:,1), y(:,1), name1, 'VerticalAlignment','bottom','HorizontalAlignment','right')

plot(x(:,1), y(:,1), 'r.','MarkerSize', 20);

hold off;