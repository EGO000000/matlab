time_range = [0, 5];
init_conditions = [pi/4, 0];

m = 0.2;
l = 0.3;
b = 0.05;

u  = 0;

[t,y] = ode45(@(t,y) pendulum(t,y,l,m,b,u), time_range, init_conditions);
plot(t,y(:,1));
xlabel("time");
ylabel("uhol");
title("odchylka kyvadla od rs");