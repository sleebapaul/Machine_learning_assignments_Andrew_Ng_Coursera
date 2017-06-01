clc;
clear all;
x1=[0:.01:10];
n=length(x1);
x2=x1;
L=[3,5];
sigma=2;
for i=1:n
    for j=1:n
        k=sum((([x1(i),x2(j)]-L).^2)/sigma);
        a(i,j)=exp(-k);
    end
end
        
