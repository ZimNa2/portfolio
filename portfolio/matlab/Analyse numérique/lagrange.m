function y = lagrange(xi, yi, x)
    n = length(xi);
    y = 0;
    for i = 1:n
        L = 1;
        for j = [1:i-1, i+1:n]
            L = L .* (x - xi(j)) / (xi(i) - xi(j));
        end
        y = y + yi(i) * L;
    end
end
