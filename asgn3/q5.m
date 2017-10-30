0;

function [L, U] = hessenberg(A)
  n = rows(A);
  % A is closest to U
  U = A;
  L = eye(n);

  for i = 1:(n-1)
    % Calculate the factor to multiply to the ith row before adding to the ith+1
    % row.
    factor = -U(i+1, i)/U(i, i);
    L(i+1, i) = -factor;
    % For a given row, there is only one element below the pivot by definition.
    % Thus we only need to update a single row.
    for j = i:n
      U(i+1, j) += U(i, j) * factor;
    end
  end
end

A = [1 4 2 3 9; 3 4 1 7 9; 0 2 3 4 9; 0 0 1 3 4; 0 0 0 4 5]
[L, U] = hessenberg(A)

% verify our output is correct
newA = L * U
assert(newA == A)
