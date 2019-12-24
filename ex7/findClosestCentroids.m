function idx = findClosestCentroids(X, centroids)
%FINDCLOSESTCENTROIDS computes the centroid memberships for every example
%   idx = FINDCLOSESTCENTROIDS (X, centroids) returns the closest centroids
%   in idx for a dataset X where each row is a single example. idx = m x 1 
%   vector of centroid assignments (i.e. each entry in range [1..K])
%

% Set K
K = size(centroids, 1);

% You need to return the following variables correctly.
idx = zeros(size(X,1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Go over every example, find its closest centroid, and store
%               the index inside idx at the appropriate location.
%               Concretely, idx(i) should contain the index of the centroid
%               closest to example i. Hence, it should be a value in the 
%               range 1..K
%
% Note: You can use a for-loop over the examples to compute this.
%
distances = zeros(size(centroids));
for i = 1:length(X)
    %for j = 1:n
    %    centroids(i,j) = sum((idx == i).*X(:,j))/sum(idx == i);
    pyth_distance = zeros(K, 1);
   % end
    %disp(X(i,:))
    %disp(centroids(i,:))
    for j = 1:size(centroids, 2)
        distances(:,j) = centroids(:,j) - X(i,j);
       % distances(:,j) = centroids(:,j) - X(i,j);
        pyth_distance = pyth_distance + (distances(:,j).^2);
    end
    idx(i) = find(pyth_distance == min(pyth_distance), 1);


end

% =============================================================

end

