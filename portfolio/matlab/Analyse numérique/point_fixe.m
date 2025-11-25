function x = point_fixe(g, x0, tol, nmax)
    x = x0;
    for i = 1:nmax
        xnew = g(x); 
        if abs(xnew - x) < tol
            x = xnew;
            return
        end
        x = xnew;
    end
end
