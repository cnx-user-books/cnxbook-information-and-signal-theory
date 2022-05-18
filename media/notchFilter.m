%Notch filter sketch
%Anders Gjendemsjo 2004
%gjendems@tele.ntnu.no

%plotting
plot([-.5 .5],[0 0],'black',[0 0],[-.2 1.2],'black');
hold on;
p1=plot([-.5 -.22],[1 1],'blue', [-.22 -.2],[1 0],'blue',[-.2 -.18],[0 1],'blue',[-.18,.18],[1 1],'blue');
set(p1,'linewidth',2); % makes the plot bold.
p1=plot([.18 .2],[1 0],'blue', [.2 .22],[0 1],'blue',[.22 .5],[1 1],'blue');
set(p1,'linewidth',2); % makes the plot bold.

hold off;
axis([-.5 .5 -.2 1.2]);
xlabel('f');
y=ylabel('|H(e^{j2\pif})|');
set(y,'fontsize', 14);
set(y,'fontweight', 'bold');



