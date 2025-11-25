function P = lagrange_interpolation(t, f, T)
    
    n = length(t);
    P = zeros(size(T));
    for k = 1:length(T)
        s = 0;
        for i = 1:n
            L = 1;
            for j = 1:n
                if j ~= i
                    L = L * (T(k)-t(j)) / (t(i)-t(j));
                end
            end
            s = s + f(i)*L;
        end
        P(k) = s;
    end
end