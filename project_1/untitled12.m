% 创建传递函数 H(s) = (s + 1)/(s² + 2s + 2)
num = [1, 1];
den = [1, 2, 2];
sys = tf(num, den);

% 时域分析
figure;
subplot(2,2,1);
impulse(sys);
title('单位冲激响应');

subplot(2,2,2);
step(sys);
title('单位阶跃响应');

% 频域分析
subplot(2,2,3);
bode(sys);
title('伯德图');

subplot(2,2,4);
nyquist(sys);
title('奈奎斯特图');

% 系统特性分析
disp('系统极点:');
pole(sys);

disp('系统零点:');
zero(sys);

disp('系统阻尼比和自然频率:');
damp(sys);