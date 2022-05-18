%Power calculation, analog and time discrete
%Anders Gjendemsjø 2003, revised 14. january 2004.
%gjendems@tele.ntnu.no

t=-2:0.01:2;
x1=sin(2*pi*t);
n=-40:40;
x2=sin(pi*(1/10)*n);

figure(1);
subplot(2,1,1)
plot(t,x1);
title('Analog & Discrete sine');
xlabel('t');
ylabel('x_1(t)');

subplot(2,1,2);
stem(n,x2);
xlabel('n');
ylabel('x_2(n)');

figure(2);
subplot(2,1,1);
plot(t,x1.^2);
hold on
% red lines marking 0 & 1
plot([0 0], [-.2 1.2],'r', [1 1], [-.2 1.2],'r');
hold off
axis([-2 2 -.2 1.2]);
title('Squared sines');
xlabel('t');
ylabel('x_1^2(t)');

subplot(2,1,2);
stem(n,x2.^2);
hold on;
% red lines marking 1 & 20
plot([1 1], [-.2 1.2],'r', [20 20], [-.2 1.2],'r');
hold off;
axis([-40 40 -.2 1.2]);
xlabel('n');
ylabel('x_2^2(n)');

%calculating power of one period. 
disp('Power, one period:');
P = (1/20)*sum(x2(1:20).^2)