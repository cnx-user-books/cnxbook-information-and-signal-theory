%time discrete figure
%Anders Gjendemsjø 2003
%gjendems@tele.ntnu.no
figure
x = [0.1 1 1.2 0.7 0.6];
stem(x);
daspect([3,1,1]); %changing the aspect ratio
axis tight;
xlabel('n');
ylabel('x(n)');