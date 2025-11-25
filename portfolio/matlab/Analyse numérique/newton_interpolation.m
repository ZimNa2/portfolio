function y = newton_interpolation(xi, yi, x)
    n = length(xi);
    a = yi;
    for k = 2:n
        a(k:n) = (a(k:n) - a(k-1:n-1)) ./ (xi(k:n) - xi(1:n-k+1));
    end
    y = a(n);
    for k = n-1:-1:1
        y = y .* (x - xi(k)) + a(k);
    end
end
