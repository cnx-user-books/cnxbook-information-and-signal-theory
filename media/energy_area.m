%signal, start of energy calculations
%Anders Gjendemsjo 2003
%gjendems@tele.ntnu.no


t=-1:.01:1;
x=t; %just for the look of it...
figure(1);
plot(t,x);
grid;
xlabel('t');
ylabel('x(t)');

figure(2);
area(t,x.^2);
xlabel('t');
ylabel('x^2(t)');
title('The colored area gives the energy')
axis([-1 1 -.2 1.1]);
grid;
%applyhatch(figure(2),'/'); %applyhatch need to be downloaded.
% from www.mathworks.com, search for hatced fill pattern.
