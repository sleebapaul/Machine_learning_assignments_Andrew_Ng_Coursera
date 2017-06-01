clc;
clear all;
x=[.5,1,1.5,2,2.5,3,3.5,4,4.5,5,5.5,6,6.5,7];
y=[173,284,310,439,485,520,605,699,728,735,790,801,840,850];
[theta,theta1] = meshgrid(-1000:1:1000);
for i = 1:2001
    for j = 1:2001
        sum=0;
        for k=1:length(x)
            sum=sum+[theta(i,j)+theta1(i,j)*x(k)-y(k)]^2;
        end
        Z(i,j)=sum/(2*length(x));
    end
end
figure(1) ;
mesh(theta,theta1,Z);
[r c]=min(Z);
title('Graph of Cost Function vs Parameters');
xlabel('\theta_0');
ylabel('\theta_1');
zlabel('Cost Funtion');
alpha=.01; % Learning rate
psi=0; 
psi1=0;
for i=1:5000
    sum1=0;
    sum2=0;
    for j=1:length(x)
        sum1=sum1+(psi+psi1*x(j)-y(j));
        sum2=sum2+(psi+psi1*x(j)-y(j))*x(j);
    end
    psi=psi-alpha*sum1/length(x);
    psi1=psi1-alpha*sum2/length(x);
end
fprintf('The theta0 value is = %d', psi);
fprintf('\n\nThe theta1 value is = %d\n\n', psi1);
for i=1:length(x)
    xnew(i)=x(i);
    ynew(i)=psi+psi1*x(i);
end
figure(2) ;
scatter(x,y,'x','r'); hold on;
title('Graph of DATA vs PREDICTED FIT');
plot(x,ynew,'g');hold off;
legend('DATA','PREDICTED FIT');
xlabel('x');
ylabel('F(x)');