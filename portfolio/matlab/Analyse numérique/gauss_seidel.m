function [x, iter] = gauss_seidel(A, b, x0, tol, nmax)
    x = x0;
    n = length(b);
    for k = 1:nmax
        x_prev = x;
        for i = 1:n
            sum_before = A(i, 1:i-1) * x(1:i-1);
            sum_after = A(i, i+1:n) * x_prev(i+1:n);
            x(i) = (b(i) - sum_before - sum_after) / A(i, i);
        end
        if norm(x - x_prev) < tol
            iter = k;
            return
        end
    end
    iter = nmax;
end