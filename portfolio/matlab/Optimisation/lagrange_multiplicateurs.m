function [x,lambda] = lagrange_multipliers(f, g, x0, tol, nmax)
    % f: fonction objectif, g: contrainte égalité g(x)=0
    syms x [length(x0) 1] lambda
    F = f(x) + lambda*g(x);
    gradF = gradient(F, [x; lambda]);
    S = solve(gradF == 0, [x; lambda],'Real',true);
    x = double([S.x]);
    lambda = double(S.lambda);
end
