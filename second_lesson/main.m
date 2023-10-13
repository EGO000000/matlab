tRange = [0 10];
x = [0 0 0];
h = 0.01;

[t, x1] = ode45(@LDR, tRange, x);
[T, RkX1] = rk(@LDR, x, tRange, h);

x1_a = analyt(t);
RkX1_a = analyt(T);

subplot(3, 2, 1);
plot(t, y(:, 1));
title("ode45");
xlabel('t');
ylabel('x');

subplot(3, 2, 2);
plot(T, RkX1(:, 1));
title("RK");
xlabel('t');
ylabel('x');

subplot(3, 2, 3);
plot(t, x1_a);
title("Analyt");
xlabel('t');
ylabel('x');