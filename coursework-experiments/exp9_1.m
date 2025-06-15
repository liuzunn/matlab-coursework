% 生成2x2复矩阵A
real_part = randn(2, 2) * sqrt(12);  % 实部：N(0,12)正态分布
imag_part = hilb(2);                % 虚部：Hilbert矩阵
A = real_part + 1i * imag_part;     % 组合成复矩阵

% 提取实部与虚部
real_A = real(A);
imag_A = imag(A);

disp('复矩阵A：'); disp(A);
disp('实部矩阵：'); disp(real_A);
disp('虚部矩阵：'); disp(imag_A);

% 计算模与辐角
mod_A = abs(A);
angle_A = angle(A);

disp('各元素的模：'); disp(mod_A);
disp('各元素的辐角（弧度）：'); disp(angle_A);

% 共轭矩阵
B = conj(A);
disp('共轭矩阵B：'); disp(B);

% A+B
sum_AB = A + B;
disp('A+B的结果：'); disp(sum_AB);

% 定义标量b
b = 3 + 4i;
% b乘以A中每个元素
A_times_b = b * A;
disp('b乘以A的结果：'); disp(A_times_b);

% A中元素除以b
A_div_b = A ./ b;
disp('A除以b的结果：'); disp(A_div_b);

% 各元素的正弦函数
sin_A = sin(A);
disp('A中各元素的正弦值：'); disp(sin_A);

% 各元素的3次幂
pow3_A = A.^3;
disp('A中各元素的3次幂：'); disp(pow3_A);

% 各元素的自然对数
log_A = log(A);
disp('A中各元素的对数：'); disp(log_A);

% 各元素的指数（e为底）
exp_A = exp(A);
disp('A中各元素的指数：'); disp(exp_A);
