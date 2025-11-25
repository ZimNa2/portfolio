function val = dTdh(h, DIC, K1, K2)
    A = K1./h + 2*K1.*K2./(h.^2);
    Ad = -K1./(h.^2) - 4*K1.*K2./(h.^3);

    denom = 1 + K1./h + K1.*K2./(h.^2);
    den_d = -K1./(h.^2) - 2*K1.*K2./(h.^3);

    val = DIC .* ( Ad .* denom - A .* den_d ) ./ (denom.^2);
end