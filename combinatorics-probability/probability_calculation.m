function [p_uniform, p_binomial] = probability_calculation(a, b, n, k_min)
% 计算均匀分布和二项分布组合问题的概率
% 输入：a,b（均匀分布参数），n（试验次数），k_min（至少成功次数）
% 输出：p_uniform（单次成功概率），p_binomial（n次中至少k_min次成功的概率）

% 计算均匀分布中X > 5的概率
p_uniform = 1 - unifcdf(5, a, b);

% 计算二项分布中至少k_min次成功的概率
k = k_min:n;  % 成功次数范围
p_binomial = sum(binopdf(k, n, p_uniform));  % 直接求和法
end