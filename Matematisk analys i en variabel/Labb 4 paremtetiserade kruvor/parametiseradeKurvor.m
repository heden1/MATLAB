%% Parametiserade kurvor Anton Hedén
clc
disp('Parametiserade kurvor Anton Hedén')
disp('--------------------')

%% Uppgift 1
disp('Uppgift 1')
disp(' ')

figure(1)
t=linspace(0,10*pi);
x=t-sin(t); y=1-cos(t);
plot(x,y)
axis equal


disp('--------------------')
%% Uppgift 2
disp('Uppgift 2')
disp(' ')

figure(2)
t=linspace(0,2*pi,100);
a=1;
b=0.5;
p=2;
q=1;
x=a*cos(t)+p; y=b*sin(t)+q;
plot(x,y)
grid on
xlabel('x'), ylabel('y','rotation',0)
axis equal, axis([-1.5+p 1.5+p -1.5+q 1.5+q])


disp('--------------------')
%% Uppgift 3
disp('Uppgift 3')
disp(' ')

figure(3)
t=linspace(0,2*pi,100);
a=1;
b=0.5;
p=2;
q=1;
x=a*cos(t)+p; y=b*sin(t)+q;
plot(x,y)
grid on
xlabel('x'), ylabel('y','rotation',0)
axis equal, axis([-1.5+p 1.5+p -1.5+q 1.5+q])

% Första
t0=1; s=[-0.5 0.5];
x0=a*cos(t0)+p; y0=b*sin(t0)+q;
dx0=-a*sin(t0); dy0=b*cos(t0);
hold on
plot(x0+s*dx0,y0+s*dy0,'m') % tangenten
plot(x0+s*dy0,y0-s*dx0,'c') % normalen
plot(x0,y0,'ro','markersize',2,'linewidth',2)


% Andra
t0=0; s=[-0.7 0.7];
x0=a*cos(t0)+p; y0=b*sin(t0)+q;
dx0=-a*sin(t0); dy0=b*cos(t0);
plot(x0+s*dx0,y0+s*dy0,'m') % tangenten
plot(x0+s*dy0,y0-s*dx0,'c') % normalen
plot(x0,y0,'ro','markersize',2,'linewidth',2)

% Tredje
t0=-2; s=[-0.5 0.5];
x0=a*cos(t0)+p; y0=b*sin(t0)+q;
dx0=-a*sin(t0); dy0=b*cos(t0);
plot(x0+s*dx0,y0+s*dy0,'m') % tangenten
plot(x0+s*dy0,y0-s*dx0,'c') % normalen
plot(x0,y0,'ro','markersize',2,'linewidth',2)



disp('--------------------')
%% Uppgift 4
disp('Uppgift 4')
disp(' ')


a=1;
b=0.5;
p=2;
q=1;
n=10 % antal punkter
t=linspace(0,2*pi,n);
x=a*cos(t)+p; y=b*sin(t)+q;
% x=cos(t)+p; y=sin(t)+q;
L=sum(sqrt(diff(x).^2+diff(y).^2))


n=100 % antal punkter
t=linspace(0,2*pi,n);
x=a*cos(t)+p; y=b*sin(t)+q;
% x=cos(t)+p; y=sin(t)+q;
L=sum(sqrt(diff(x).^2+diff(y).^2))% differansen i x   mellan xn-1 och xn sedan phytagorosatsen

disp('Desto fler punkter desto närmare den exakta omkretsen underifrån')




disp('--------------------')