N = 100000;
M = 1000;
sum = 0;

for i = 1:N
    sum = sum + floor(M*rand(1)+1);
end

sum / N