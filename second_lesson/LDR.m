function dYdt = LDR(t, X)

    a = [3 21 42 24];
    u = 6;
    dYdt = [X(2);
            X(3);
            (u - a(2)*X(3) - a(3)*X(2) - a(4)*X(1)) / a(1)];
end