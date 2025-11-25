function x = linear_prog(f, A, b, Aeq, beq, lb, ub)
    x = linprog(f, A, b, Aeq, beq, lb, ub);
end
