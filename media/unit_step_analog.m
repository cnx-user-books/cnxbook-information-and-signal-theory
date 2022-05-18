%analog unit step, including delayed
%Anders Gjendemsjø 2003
%gjendems@tele.ntnu.no

%unit step function, no delay, e.g. u(t)
figure(1);
u1 = [0 0 0 0 0 0 0 0 0 0 0];
t1 = -10:0;
plot(t1,u1);

hold on;

u2 = [1 1 1 1 1 1 1 1 1 1 1];
t2 = 0:10;
plot(t2,u2);
hold off;
daspect([4,1,1]); %changing the aspect ratio
axis([-10 10 -.2 1.2]);
grid;
xlabel('t');
ylabel('u(t)');

%unit step function, delay of 5, e.g. u(t-5)
figure(2)
u3 = [0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
t3 = -10:5;
u4 = [1 1 1 1 1 1]
t4 = 5:10;

plot(t3,u3);
hold on;
plot(t4,u4);
hold off;

daspect([4,1,1]); %changing the aspect ratio
axis([-10 10 -.2 1.2]);
grid;
xlabel('t');
ylabel('u(t-5)');