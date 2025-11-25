function [x, fval] = gradient_descent(f, gradf, x0, alpha, tol, nmax)
    x = x0;
    for k = 1:nmax
        xnew = x - alpha * gradf(x);
        if norm(xnew - x) < tol
            x = xnew;
            break
        end
        x = xnew;
    end
    fval = f(x);
end
