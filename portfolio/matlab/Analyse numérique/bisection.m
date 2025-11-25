function [x, iter] = bisection(f, a, b, tol)
    iter = 0;
    while (b - a)/2 > tol
        c = (a + b)/2;
        if f(c) == 0
            x = c; return
        elseif sign(f(c)) == sign(f(a))
            a = c;
        else
            b = c;
        end
        iter = iter + 1;
    end
    x = (a + b)/2;
end