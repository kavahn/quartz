```
% Part 1
function part1()
    m = 10; % Dimension of vectors
    
    % Case I: m = n
    disp('Case I: m = n');
    test_linear_independence(m, m);
    
    % Case II: m > n
    disp('Case II: m > n');
    n = randi([1, 9]);
    test_linear_independence(m, n);
    
    % Case III: m < n
    disp('Case III: m < n');
    n = randi([11, 1000]);
    test_linear_independence(m, n);
end

function test_linear_independence(m, n)
    trials = 5;
    independent_count = 0;
    dependent_count = 0;
    
    for i = 1:trials
        % Generate a random matrix Y of dimensions m x n
        Y = randn(m, n);
        
        % Compute the rank of Y
        rk = rank(Y);
        
        % Compute the Row Reduced Echelon Form and get pivot positions
        [~, pivotColumns] = rref(Y);
        
        % Determine linear independence based on rank and pivot positions
        if rk == n && length(pivotColumns) == n
            independent_count = independent_count + 1;
        else
            dependent_count = dependent_count + 1;
        end
    end
    
    fprintf('Independent Sets: %d, Dependent Sets: %d\n', independent_count, dependent_count);
end
    

```
```
% Part 2
% Define your basis vectors of S1 as columns in a matrix
% Since the specific details are not provided, let's create some dummy vectors in R4
% You should replace these with your actual basis vectors
v1 = [1; 0; 0; 0];
v2 = [0; 1; 0; 0];
% Assuming these are the basis vectors for S1, let's form matrix A
A = [v1, v2];

% Define your vectors z2 and z3
% Again, these are dummy vectors; replace them with the actual vectors you are querying
z2 = [1; 2; 0; 0];
z3 = [0; 0; 1; 0];

% Check if z2 is in S1
% Solve Ax = z2 for x. If a solution exists, z2 can be represented as a linear combination of
% the columns of A, and thus z2 is in the subspace S1
x2 = A \ z2;

% Since MATLAB may return a solution even if z2 is not perfectly in the subspace due to numerical precision,
% it’s more reliable to use residuals to check if the solution is valid.
residual2 = norm(A*x2 - z2);
isZ2InS1 = residual2 < 1e-10;

% Check if z3 is in S1 similarly
x3 = A \ z3;
residual3 = norm(A*x3 - z3);
isZ3InS1 = residual3 < 1e-10;

% Display the results
fprintf('Is z2 in S1? %s\n', string(isZ2InS1));
fprintf('Is z3 in S1? %s\n', string(isZ3InS1));
```
