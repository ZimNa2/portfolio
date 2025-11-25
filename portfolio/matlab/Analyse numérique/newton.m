function [x, iter] = newton(f, df, x0, tol, nmax)
    x = x0;
    for i = 1:nmax
        xnew = x - f(x)/df(x);
        if abs(xnew - x) < tol
            iter = i;
            x = xnew;
            return
        end
        x = xnew;
    end
    iter = nmax;
end