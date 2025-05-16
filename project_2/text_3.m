n=-12:12;
E=1;ta=0.5;
T=2*ta;w=2/T;
fn=(E*ta/T)*sinc(w*ta*n/2); %使用 sinc 函数构造了 sat 函数
stem(n,fn,'filled');
hold on
k=-12:0.01:12;
f=abs(E*ta/T)*sinc(w*ta*k/2);
plot(k,f,'--');