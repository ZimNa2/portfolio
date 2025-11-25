function x = jacobi(A, b, x0, tol, nmax)
    D = diag(diag(A));
    R = A - D;
    x = x0;
    for i = 1:nmax
        xnew = D \ (b - R*x);
        if norm(xnew - x) < tol
            x = xnew;
            return
        end
        x = xnew;
    end
end
