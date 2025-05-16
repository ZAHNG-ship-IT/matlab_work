a = [0 1]; 
b = [1 1]; 
figure;
subplot(221);impulse(a,b); grid on;
title('单位冲激响应');xlabel('时间 t');ylabel('h(t)');

subplot(222);step(a,b); grid on;
title('单位阶跃响应');xlabel('时间 t');ylabel('g(t)');

% 利用lsim()函数求零状态响应
yzs_lsim =lsim(a, b, t); 
%figure; 
subplot(223),plot(a,b,yzs_lsim),grid on;
title('利用lsim()函数求零状态响应');
xlabel('时间 t');
ylabel('yzs(t)');

