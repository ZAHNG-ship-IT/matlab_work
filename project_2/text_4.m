n = -12:12;
E = 1;
ta = 0.5;         % 脉冲宽度
T = 2*ta;         % 周期 = 2倍脉冲宽度 (修正点)
w = 2*pi/T;       % 角频率公式修正 (补充解释见下文)

% 计算傅里叶系数
fn = (E*ta/T) * sinc(w*ta*n/2/(2*pi));  % sinc参数归一化修正

% 可视化
stem(n, fn, 'filled', 'MarkerSize', 8);
hold on;

k = -12:0.01:12;

%f=abs(E*ta/T)*sinc(w*ta*k/2);
f =  abs(E*ta/T) * (sinc(w*ta*k/2/(2*pi))); % 连续包络
plot(k, f, 'r--', 'LineWidth', 1.5);

% 图形标注
title('矩形脉冲的傅里叶系数（离散与连续对比）');
xlabel('谐波次数 n'); 
ylabel('幅度 |F_n|');
legend('离散系数', '连续包络');
grid on;
