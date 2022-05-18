%discrete unit step, including delayed
%Anders Gjendemsjø 2003
%gjendems@tele.ntnu.no

%unit step function, no delay, e.g. u(n)
figure(1);
u1 = [0 0 0 0 0 0 0 0 0 0 0];
n1 = -10:0;
stem(n1,u1,'filled');
hold on;
u2 = [1 1 1 1 1 1 1 1 1 1 1];
n2 = 0:10;
stem(n2,u2,'filled');
hold off;
daspect([4,1,1]); %changing the aspect ratio
axis([-10 10 -.2 1.2]);
grid;
xlabel('n');
ylabel('u(n)');

%unit step function, delay of 5, e.g. u(n-5)
figure(2)
u3 = [0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
n3 = -10:5;
u4 = [1 1 1 1 1 1]
n4 = 5:10;

stem(n3,u3,'filled');
hold on;
stem(n4,u4,'filled');
hold off;

daspect([4,1,1]); %changing the aspect ratio
axis([-10 10 -.2 1.2]);
grid;
xlabel('n');
ylabel('u(n-5)');