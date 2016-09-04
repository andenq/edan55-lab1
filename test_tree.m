N = 7;

tree = generate_tree(N);
[x, y] = treelayout(tree);

x = x';
y = y';
name1 = cellstr(num2str((1:count)'));
text(x(:,1), y(:,1), name1, 'VerticalAlignment','bottom','HorizontalAlignment','right')