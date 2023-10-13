function x_der = pendulum(t, x, l, m, b, u)
    I = m*l.^2;
    g = 9.81;
    x_der = [x(2); u./I - m*g*l*sin(x(1))./I - b*x(2)./I]
end

