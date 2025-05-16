ts=0;te=5;dt=0.01; 
t=ts:dt:te; 
f=exp(-t).*stepfun(t,0); %单边指数函数 
f1=stepfun(t,0); %单位阶跃函数 
a=[1 2 3];b=[1 1]; 
y=lsim(b,a,f,t);%求取零状态响应 
y1=lsim(b,a,f1,t);%求取零状态响应 
plot(t,y,t,y1); %画图 xlabel('Time(sec)') %横坐标定义 ylabel('y(t)') %纵坐标定义 
title('零状态响应'); 
grid on 
legend('exp(-t)','u(t)')