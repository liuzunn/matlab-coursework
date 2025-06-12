diameter = [30.2, 29.8, 30.5, 30.1, 29.9, 30.3, 29.7, 30.4, 30.0, 29.6];
%工厂零件直径

mean_val = mean(diameter);    % 平均值
median_val = median(diameter);  % 中位数
var_val = var(diameter);      % 方差
std_val = std(diameter);      % 标准差
range_val = range(diameter);  % 极差


disp(['平均值: ', num2str(mean_val)]);
disp(['中位数: ', num2str(median_val)]);
disp(['方差: ', num2str(var_val)]);
disp(['标准差: ', num2str(std_val)]);
disp(['极差: ', num2str(range_val)]);