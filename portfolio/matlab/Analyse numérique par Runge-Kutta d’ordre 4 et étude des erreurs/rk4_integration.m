function [t, y] = rk4_integration(f, t0, y0, h, nsteps)
    t = zeros(1, nsteps+1);
    y = zeros(length(y0), nsteps+1);
    t(1) = t0;
    y(:,1) = y0;
    
    for i = 1:nsteps
        k1 = f(t(i), y(:,i));
        k2 = f(t(i) + h/2, y(:,i) + (h/2)*k1);
        k3 = f(t(i) + h/2, y(:,i) + (h/2)*k2);
        k4 = f(t(i) + h, y(:,i) + h*k3);
        
        y(:,i+1) = y(:,i) + (h/6)*(k1 + 2*k2 + 2*k3 + k4);
        t(i+1) = t(i) + h;
    end
end