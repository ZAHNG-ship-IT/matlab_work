a=[1 5 6]; 
b=[2 8]; 
sys = tf(b, a); % 创建传递函数对象


t_impulse = 0:0.01:10; % 定义时间范围
h = impulse(sys,t_impulse);%单位冲激响应

subplot(221),plot(t_impulse, h), grid on;
title('单位冲激响应');
xlabel('时间 t');
ylabel('h(t)');




t_step = 0:0.01:10; % 定义时间范围
g = step(sys,t_step);%单位跃迁响应
subplot(222),plot(t_step, g),grid on;
title('单位阶跃响应');
xlabel('时间 t');
ylabel('g(t)');
t = 0:0.01:10; % 定义时间范围
e = exp(-t).*heaviside(t); % 输入信号 e(t) = exp(-t)*u(t)


% 利用lsim()函数求零状态响应
yzs_lsim =lsim(sys, e, t); 
%figure; 
subplot(223),plot(t, yzs_lsim),grid on;
title('利用lsim()函数求零状态响应');
xlabel('时间 t');
ylabel('yzs(t)');


