% 定义系统传递函数
num = [0 1]; % 分子多项式系数
den = [1 1]; % 分母多项式系数，对应 s + 1
sys = tf(num, den); % 创建传递函数对象

% 求单位冲激响应
t_impulse = 0:0.01:10; % 定义时间范围
h = impulse(sys, t_impulse); % 计算单位冲激响应
figure;
subplot(221),plot(t_impulse, h), grid on;
title('单位冲激响应');
xlabel('时间 t');
ylabel('h(t)');

% 求单位阶跃响应
t_step = 0:0.01:10; % 定义时间范围
g = step(sys, t_step); % 计算单位阶跃响应
%figure;
subplot(222),plot(t_step, g),grid on;
title('单位阶跃响应');
xlabel('时间 t');
ylabel('g(t)');


% 定义输入信号
t = 0:0.01:10; % 定义时间范围
e = exp(-t).*heaviside(t); % 输入信号 e(t) = exp(-t)*u(t)

% 利用lsim()函数求零状态响应
yzs_lsim =lsim(sys, e, t); 
%figure; 
subplot(223),plot(t, yzs_lsim),grid on;
title('利用lsim()函数求零状态响应');
xlabel('时间 t');
ylabel('yzs(t)');

% 利用conv()函数求零状态响应
% 先求单位冲激响应
h = impulse(sys, t); 
yzs_conv = conv(e, h)*0.01; % 卷积，乘0.01是因为时间间隔
yzs_conv = yzs_conv(1:length(t)); % 截取与t等长的部分
%figure;
subplot(224),plot(t, yzs_conv),grid on;
title('利用conv()函数求零状态响应');
xlabel('时间 t');
ylabel('yzs(t)');