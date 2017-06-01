clc;
clear all;
k=0;
for i=0:50
    k=i+1;
    x(k)=3+2*i;
end
for theta2=0:50
    sum=0;
    for i= 0:50
        k=i+1;
        y(k)=theta2+theta2*i;
        diff=(y(k)-x(k))^2;
        sum=sum+diff;
    end
    k=theta2+1;
    final(k)=sum/50; 
end
theta1=[0:50];
theta2=[0:50];
%plot(theta1,final,theta2);