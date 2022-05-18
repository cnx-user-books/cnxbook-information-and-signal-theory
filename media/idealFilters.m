%Ideal filter types
%Anders Gjendemsjo 2004
%gjendems@tele.ntnu.no

figure(1);
% lowpass filter
subplot(2,1,1);
plot([-.5 .5],[0 0],'black',[0 0],[-.2 1.2],'black');
hold on;
p=plot([-.2 -.2],[0 1],'blue', [-.2 .2],[1 1],'blue',[.2 .2],[0 1],'blue');
set(p,'linewidth',3); % makes the plot bold.
hold off;
grid;
axis([-.5 .5 -.2 1.2]);
%xlabel('f');
y=text(-.4,1.1,'|H(e^{j2\pif})|');
set(y,'fontsize', 14);
set(y,'fontweight', 'bold');
axis off;
text(-.22,-.18,'-f\_c');
text(.20,-.18,'f\_c');
text(.48,-.18,'f');
text(.48,-.18,'f');

% highpass
subplot(2,1,2);
plot([-.5 .5],[0 0],'black',[0 0],[-.2 1.2],'black');
hold on;
p=plot([-.5 -.3],[1 1],'blue', [-.3 -.3],[1 0],'blue',[.3 .3],[0 1],'blue',[.3 .5],[1,1],'blue');
set(p,'linewidth',3); % makes the plot bold.
grid;
hold off;
axis([-.5 .5 -.2 1.2]);
xlabel('f');
y=text(-.2,1.1,'|H(e^{j2\pif})|');
set(y,'fontsize', 14);
set(y,'fontweight', 'bold');
axis off;
text(-.33,-.18,'-f\_1');
text(.28,-.18,'f\_1');
text(.48,-.18,'f');

figure(2);
%bandpass
subplot(3,1,1);
plot([-.5 .5],[0 0],'black',[0 0],[-.2 1.2],'black');
hold on;
p1=plot([-.3 -.3],[0 1],'blue', [-.3 -.2],[1 1],'blue',[-.2 -.2],[0 1],'blue');
set(p1,'linewidth',3); % makes the plot bold.
p2=plot([.2 .2],[0 1],'blue', [.2 .3],[1 1],'blue',[.3 .3],[0 1],'blue');
set(p2,'linewidth',3); % makes the plot bold.
grid;
hold off;
axis([-.5 .5 -.2 1.2]);
axis off;
y=text(-.15,1.1,'|H(e^{j2\pif})|');
set(y,'fontsize', 14);
set(y,'fontweight', 'bold');
text(-.2,-.18,'-f\_1');
text(.18,-.18,'f\_1');
text(-.33,-.18,'-f\_2');
text(.30,-.18,'f\_2');
text(.48,-.18,'f');


%bandstop
subplot(3,1,2);
plot([-.5 .5],[0 0],'black',[0 0],[-.2 1.2],'black');
hold on;
p1=plot([-.5 -.3],[1 1],'blue', [-.3 -.3],[0 1],'blue',[-.2 -.2],[0 1],'blue',[-.2 .2],[1,1],'blue');
set(p1,'linewidth',3); % makes the plot bold.
p2=plot([.2 .2],[0 1],'blue', [.3 .3],[0 1],'blue',[.3 .5],[1 1],'blue');
set(p2,'linewidth',3); % makes the plot bold.
grid;
hold off;
axis([-.5 .5 -.2 1.2]);
axis off;
y=text(-.15,1.2,'|H(e^{j2\pif})|');
set(y,'fontsize', 14);
set(y,'fontweight', 'bold');
text(-.2,-.18,'-f\_1');
text(.18,-.18,'f\_1');
text(-.33,-.18,'-f\_2');
text(.3,-.18,'f\_2');
text(.48,-.18,'f');

%allpass
subplot(3,1,3);
plot([-.5 .5],[0 0],'black',[0 0],[-.2 1.2],'black');
hold on;
p=plot([-.5 .5],[1 1],'blue');
set(p,'linewidth',3); % makes the plot bold.
hold off;
grid;
axis([-.5 .5 -.2 1.2]);
axis off;
y=text(-.15,1.2,'|H(e^{j2\pif})|');
set(y,'fontsize', 14);
set(y,'fontweight', 'bold');
text(.48,-.18,'f');