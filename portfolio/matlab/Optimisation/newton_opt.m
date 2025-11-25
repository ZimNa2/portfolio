function [x, fval] = newton_opt(f, gradf, hessf, x0, tol, nmax)
    x = x0;
    for k = 1:nmax
        xnew = x - hessf(x)\gradf(x);
        if norm(xnew - x) < tol
            x = xnew;
            break
        end
        x = xnew;
    end
    fval = f(x);
end
