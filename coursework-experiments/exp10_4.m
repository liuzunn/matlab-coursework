syms x w
f = 4*sin(3*x)/x;
F = fourier(f, x, w);
disp('原函数f:'); pretty(f)
disp('象函数F:'); pretty(F)

figure;
subplot(1,2,1); ezplot(f, [-5,5]); title('原函数f(x)'); grid on;
subplot(1,2,2); ezplot(F, [-10,10]); title('象函数F(ω)'); grid on;