function I = trapeze_integration(f, a, b, n)
    h = (b - a) / n;
    x = a:h:b;
    y = f(x);
    I = h * (sum(y(2:end-1)) + (y(1) + y(end))/2);
end