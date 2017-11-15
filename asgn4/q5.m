
% generate plots for mandrill
load mandrill
plot_all_tsvd("mandrill", X)

% generate plots for durer
load durer
plot_all_tsvd("durer", X)

% plot_all_tsvd generates the rank 2-64 plots and saves them to a file.
function plot_all_tsvd(name, X)
  f = figure()
  for i = 1:6
    plot_tsvd(X, 2^i, i)
  end
  saveas(f, "q5-" + name + ".png")
end

% plot_tsvd takes the TSVD of the matrix X resulting in a SVD of rank r and
% displays it in a 3x2 grid in the specified slot.
function plot_tsvd(X, r, slot)
  % Compute the SVD of the matrix X.
  [U,S,V] = svd(X);

  % Figure out how big the decomposition is.
  [rows, cols] = size(S);
  % Truncate the singular values so it has rank R
  S((r+1):rows, :) = 0;

  % Compute the compressed version from the TSVD.
  compressed_X = U * S * V';

  % Check that the truncation is correct.
  assert(rank(S) == r)
  assert(rank(compressed_X) == r)

  % Display the TSVD of X.
  colormap(gray);
  subplot(3, 2, slot);
  image(compressed_X);
  title("TSVD rank = " + r);
end
