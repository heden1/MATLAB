%%Mer om Grafritning Anton Hedén
clc
disp('Mer om Grafritning Anton Hedén')
disp('--------------------')

%% Uppgift 1
disp('Uppgift 1')
disp(' ')

%% Graf och axlar
f=@(x)((x.^2-1).^2).^(1./3.);
xa=-8; xb=8; s=0.01; ya=-6; yb=6;

%% Med s>0 undviker vi singulariteten i x=0.
xv=linspace(xa,-s); xh=linspace(s,xb);
figure(1)
plot(xv,f(xv),'blue',xh,f(xh),'blue','LineWidth',2)
axis equal, axis([xa xb ya yb]), grid on
xlabel('x'), ylabel('y'), title('y = (x^2 +2x +4) / 2x')
hold on

%% Asymptoter saknar asymptoter

%% nollställen
plot(-1,0,'oblack',1,0,'oblack')
text(-1.2,-0.6,'(-1,0)'), text(0.8,-0.6,'(1,0)')

plot(0,1,'ogreen')
hold off
disp('--------------------')
%% Uppgift 2 
disp('Uppgift 2')
disp(' ')
sqrt(4)

%% Graf och axlar

f=@(x)(x)./(1-x.^2);
g=@(x)(x.^3)./(1-x.^4);
h=@(x)(x.^3-x)./(sqrt(x.^6+1));
k=@(x)(x.^3)./(sqrt(abs(x.^4-1)));

xa=-5; xb=5; s1=0.999; s2=1.01; ya=-5; yb=5;

%% Med s>0 undviker vi singulariteten i x=0.
xv=linspace(xa,-s2); xm=linspace(-s1,s1); xh=linspace(s2,xb);
figure(2)
% f
subplot(2,2,1)
plot(xv,f(xv),'blue',xm,f(xm),'blue',xh,f(xh),'blue','LineWidth',2)
axis equal, axis([xa xb ya yb]), grid on
xlabel('x'), ylabel('y'), title('f(x) = c)')
hold on
% Asymptoter
plot ([-1 -1],[-10 10],'--red')
plot ([1 1],[-10 10],'--red')
plot ([-10 10],[0 0],'--red')
text(-3.2,-1.8,'y= -1'), text(1.2,1,'y=1'), text(3,0.7,'x=0')


% g
subplot(2,2,2)
plot(xv,g(xv),'blue',xm,g(xm),'blue',xh,g(xh),'blue','LineWidth',2)
axis equal, axis([xa xb ya yb]), grid on
xlabel('x'), ylabel('y'), title('g(x) = b)')
hold on
% Asymptoter
plot ([-1 -1],[-10 10],'--red')
plot ([1 1],[-10 10],'--red')
plot ([-10 10],[0 0],'--red')
text(-3.2,-1.8,'y= -1'), text(1.2,1,'y=1'), text(3,0.7,'x=0')
% exterempunkter
plot (0,0,'ogreen')

xv=linspace(xa,s1); xh=linspace(s2,xb); 
% h
subplot(2,2,3)
plot(xv,h(xv),'blue',xh,h(xh),'blue','LineWidth',2)
axis equal, axis([xa xb ya yb]), grid on
xlabel('x'), ylabel('y'), title('h(x) = d)')
hold on
% Asymptoter
plot ([-5 5],[-1 -1],'--red')
plot ([-5 5],[1 1],'--red')
text(-3.2,-1.8,'x= -1'), text(1.2,1.8,'x=1') 

% extrempunkter
plot (-0.56,0.38,'ogreen')
plot (0.56,-0.38,'ogreen')


% k
subplot(2,2,4)
plot(xv,k(xv),'blue',xh,k(xh),'blue','LineWidth',2)
axis equal, axis([xa xb ya yb]), grid on
xlabel('x'), ylabel('y'), title('k(x) = a)')
hold on
% Asymptoter
plot ([-1 -1],[-100 100],'--red')
plot ([1 1],[-100 100],'--red')
plot ([-5 5],[-5 5],'--red')
text(-3.2,-1.8,'y= -1'), text(1.2,1,'y=1'), text(3,2.7,'y=x')

% extrempunkter
plot (0,0,'ogreen')
plot (-1.31607,-1.61185,'ogreen')
plot (1.31607,1.61185,'ogreen')

disp('--------------------')
%% Uppgift 3
disp('Uppgift 3')
disp(' ')

disp('--------------------')
%% Uppgift 4
disp('Uppgift 4')
disp(' ')

disp('--------------------')
%% Uppgift 5
disp('Uppgift 5')
disp(' ')

disp('--------------------')