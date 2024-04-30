points = [5, 10, 15; 5, 12, 16];
coeffs = divided_difference(points);
disp(coeffs);

function coeffs = divided_difference(points)
    % points should be a matrix with two rows, where each column represents a point (x, y)
    n = size(points, 2); % number of points
    
    % Initialize the divided differences table
    table = zeros(n, n);
    
    % Populate the first column of the table with y-values
    table(:,1) = points(2,:)';
    
    % Compute the divided differences
    for j = 2:n
        for i = 1:n-j+1
            table(i,j) = (table(i+1,j-1) - table(i,j-1)) / (points(1,i+j-1) - points(1,i));
        end
    end
    
    % Extract the diagonal of the table (the coefficients of the interpolating polynomial)
    coeffs = diag(table);
end
