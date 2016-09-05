rounds = 5;

diary 'lab1_output.txt';
diary on;

fprintf('============ NEW LAB 1 RUN ============');

for exp = 2:20
    N = 2^exp - 1;
    fprintf('\n=======================\n\n');
    fprintf('N = %d\n', N);
    
    tic
    
    fprintf('\nR1: ');
    R1
    
    toc
    tic

    fprintf('\nR2: ');
    R2
    
    toc
    tic

    fprintf('\nR3: ');
    R3
    
    toc
end