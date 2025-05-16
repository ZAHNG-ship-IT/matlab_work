dt=0.02; t=-1:dt:3;
f1=heaviside(t)-heaviside(t-1);
f2=exp(-3*t).*heaviside(t);
f=conv(f1,f2)*dt; n=length(f); tt=(0:n-1)*dt-2;


subplot(221), plot(t,f1), grid on;
axis([-1,2,-0.5,2]); title('f1(t)'); xlabel('t')
subplot(222), plot(t,f2), grid on;
axis([-1,3,-0.5,2]); title('f2(t)'); xlabel('t')
subplot(212), plot(tt,f), grid on;
axis([-2,5,-0.5,2]);
title('f(t)=f1(t)*f2(t)'); xlabel('t')