function [x, fval] = nelder_mead(f, x0)
    [x, fval] = fminsearch(f, x0);
end
