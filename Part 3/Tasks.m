clc; clear

e = @(AR) 1.78*(1-0.045 * AR.^0.68)-0.64;
k = @(AR, e) (pi .* AR .* e).^(-1);

%maxEfficiency = sqrt((pi*AR*e)/4*CD);

AR = linspace(0,30, 1000);

figure
subplot(1,3,1)
plot(AR, e(AR))
xlabel("AR")
ylabel("e")
grid minor
title("e vs AR")

subplot(1,3,2)
plot(AR, k(AR,e(AR)))
xlabel("AR")
ylabel("k")
grid minor
title("k vs AR")


C_D0 = 0.025;

MaxLD = @(AR) sqrt(pi * AR .* e(AR) / (4*C_D0));

subplot(1,3,3)
plot(AR, MaxLD(AR))
xlabel("AR")
ylabel("MaxLD")
grid minor
title("MaxLD vs AR")