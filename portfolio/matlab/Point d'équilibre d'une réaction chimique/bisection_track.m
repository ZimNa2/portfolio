function [x, iter, history] = bisection_track(f, a, b, tol)
    iter = 0;
    history = [];
    while (b - a)/2 > tol
        c = (a + b)/2;
        history(end+1) = c;

        if f(c) == 0
            x = c;
            return
        elseif sign(f(c)) == sign(f(a))
            a = c;
        else
            b = c;
        end
        iter = iter + 1;
    end
    x = (a + b)/2;
end