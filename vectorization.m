clc;
clear all;
x=[.5,1,1.5,2,2.5,3,3.5,4,4.5,5,5.5,6,6.5,7];
y=[173,284,310,439,485,520,605,699,728,735,790,801,840,850];
[theta,theta1] = meshgrid(-1000:1:1000);
for i = 1:2001
    for j = 1:2001
        Z(i,j)=sum((theta(i,j)+theta1(i,j)*x-y).^2)/(2*length(x));
    end
end
figure(1) ;
mesh(theta,theta1,Z);
[r c]=min(Z);
title('Graph of Cost Function vs Parameters');
xlabel('\theta_0');
ylabel('\theta_1');
zlabel('Cost Funtion');