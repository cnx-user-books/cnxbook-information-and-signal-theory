%Complex exponential function - Illustrations
%Anders Gjendemsjø 2003
%gjendems@tele.ntnu.no

t=0:0.01:5;
w1=pi;
w2=3*pi;
expo1 = exp(j*w1*t);
expo2 = exp(j*w2*t);

figure(1);
plot(t,real(expo1))
hold;
plot(t,real(expo2),'r');
hold off;
legend('e^{j \pi t}','e^{j 3 \pi t}')
xlabel('t');
title('Real parts')

% time discrete
n=-10:10;
expo3 = exp(j*(pi/10)*n);
expo4 = exp(j*(pi/2)*n);
expo5 = exp(j*(5*pi/2)*n);

figure(2);
stem1 = stem(n,real(expo3),'filled');
hold on
stem2 = stem(n,real(expo4),'r','filled');
hold off
legend([stem1(1),stem2(1)],'e^{j (\pi/10) n}','e^{j (\pi/2) n}');
xlabel('n')
title('Real parts');

figure(3);
subplot(2,1,1);
stem(n,real(expo4),'filled')
legend('e^{j (\pi/2) n}');
title('Real parts')
subplot(2,1,2);
stem(n,real(expo5),'filled');
legend('e^{j (5 \pi/2) n}')
xlabel('n');
