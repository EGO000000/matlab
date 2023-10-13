tRange = [0 10];
Y0 = [1 0];

h = 0.1;

[t, X] = ode45(@NDR, tRange, Y0);
[t1, X1] = rk(@NDR, Y0, tRange, h);

plot(t, X(:, 1), '.', LineWidth= 5);
hold on
plot(t1, X1(:, 1), '--', LineWidth=5);
legend('ode45', 'RK')