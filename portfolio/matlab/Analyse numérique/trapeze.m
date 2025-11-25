function I = trapeze(f, a, b, n)
    h = (b - a)/n;
    x = a:h:b;
    y = f(x);
    I = h*(sum(y) - 0.5*(y(1) + y(end)));
end
