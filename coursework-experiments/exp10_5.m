syms t s
g = exp(-4*t)*sin(t) + (exp(-2*t) + 2*t - 1)/4;
Lg = laplace(g, t, s);
disp('原函数g:'); pretty(g)
disp('象函数Lg:'); pretty(Lg)

figure;
subplot(1,2,1); ezplot(g, [0,5]); title('原函数g(t)'); grid on;
subplot(1,2,2); ezplot(Lg, [0,5]); title('象函数Lg(s)'); grid on;