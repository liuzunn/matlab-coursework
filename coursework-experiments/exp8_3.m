rng(13); 

rows = 50; 
cols = 5;  
X = randn(rows, cols); 

% 计算协方差矩阵
cov_matrix = cov(X);

% 计算相关系数矩阵
corr_matrix = corrcoef(X);

% 计算相关系数矩阵的显著性（P值）
[n, ~] = size(X);
p_matrix = zeros(cols, cols);

for i = 1:cols
    for j = 1:cols
        if i < j
            r = corr_matrix(i, j); % 获取相关系数
            t_val = r * sqrt((n - 2) / (1 - r^2)); % 计算 t 值
            p_val = 2 * (1 - tcdf(abs(t_val), n - 2)); % 计算 P 值（双尾检验）
            p_matrix(i, j) = p_val;
            p_matrix(j, i) = p_val; % 对称填充
        end
    end
end


p_indices = [find(p_matrix < 0.05)]'; % 转置为行向量

disp('满足 p < 0.05 的索引:');
disp(p_indices);