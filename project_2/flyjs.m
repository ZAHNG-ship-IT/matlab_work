function flyjs(m)
sum=0;
t=-3:0.01:3;
E=1;T=1;
ta=T/2;
w=2*pi/T;
for n=1:m
 fn=(2*E*ta/T)*sin(w*ta*n/2)/(w*ta*n/2);
 f=cos(n*w*t)*fn;
 sum=sum+f;
end
sum=sum+(E*ta/T);
 plot(t,sum);