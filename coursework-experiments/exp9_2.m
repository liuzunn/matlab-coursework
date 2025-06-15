% 1.
% 定义t的范围
t = -5:0.01:5;
% 计算实部与虚部
real_z1 = t;
imag_z1 = t.^2;
% 绘制图像
plot(real_z1, imag_z1, 'b-', 'LineWidth', 1.5);
title('z = t + i t^2 的图像');
xlabel('实部'); ylabel('虚部');
grid on;

% 2.
% 定义t的范围
t = -5:0.01:5;
% 计算实部与虚部
real_z2 = t;
imag_z2 = exp(t) .* sin(t);
% 绘制图像
figure;
plot(real_z2, imag_z2, 'r-', 'LineWidth', 1.5);
title('z = t + i e^t sin(t) 的图像');
xlabel('实部'); ylabel('虚部');
grid on;