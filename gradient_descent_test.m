clc;
k=0;
for i=0:50
    k=i+1;
    x(k)=3+2*i;
end
sum=0;
for i= 0:50
    k=i+1;
    y(k)=3+3*i;
    diff=(y(k)-x(k))^2;
    sum=sum+diff;
end
final=sum/50;
disp(final)