function [x, iter, history] = newton_track(f, df, x0, tol, nmax)
    x = x0;
    history = x0;
    for i=1:nmax
        xnew = x - f(x)/df(x);
        history(end+1) = xnew;

        if abs(xnew - x) < tol
            iter = i;
            x = xnew;
            return
        end
        x = xnew;
    end
    iter = nmax;
end