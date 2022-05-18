%Periodicity
%Anders Gjendemsjo 2003
%gjendems@tele.ntnu.no

n=-10:10;
t=-10:0.01:10;
f1= 1/8;
f2= 2/3;
f3= 1/(pi);

%analog
x1 = cos(2*pi*f1*t);
x2 = cos(2*pi*f2*t);
x3 = cos(2*pi*f3*t);

%discrete
x4 = cos(2*pi*f1*n);
x5 = cos(2*pi*f2*n);
x6 = cos(2*pi*f3*n);

figure(1);
subplot(2,1,1);
plot(t,x1);
xlabel('t');
subplot(2,1,2);
stem(n,x4,'filled');
xlabel('n')

figure(2);
subplot(2,1,1);
plot(t,x2);
xlabel('t');
subplot(2,1,2);
stem(n,x5,'filled');
xlabel('n');

figure(3);
subplot(2,1,1);
plot(t,x3);
xlabel('t');
subplot(2,1,2);
stem(n,x6,'filled');
xlabel('n');