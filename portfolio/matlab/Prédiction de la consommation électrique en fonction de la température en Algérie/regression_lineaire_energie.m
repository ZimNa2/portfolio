function [a, b, R2, stats] = regression_lineaire_energie(x, y)
    n = length(x);
    X = [ones(n,1), x(:)];
    theta = (X' * X) \ (X' * y(:));
    b = theta(1);
    a = theta(2);
    
    y_pred = a*x + b;
    SS_res = sum((y - y_pred).^2);
    SS_tot = sum((y - mean(y)).^2);
    R2 = 1 - SS_res / SS_tot;
    
    % Statistiques additionnelles
    n = length(x);
    s_residuals = sqrt(SS_res / (n - 2));
    
    stats.s_a = s_residuals / sqrt(sum((x - mean(x)).^2));
    stats.s_b = s_residuals * sqrt(1/n + mean(x)^2 / sum((x - mean(x)).^2));
    stats.residuals = y - y_pred;
end