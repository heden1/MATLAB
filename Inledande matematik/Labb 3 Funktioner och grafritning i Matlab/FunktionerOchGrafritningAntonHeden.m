%% Funktioner och grafritning Anton Hedén
clc
disp('Funktioner och grafritning Anton Hedén')
disp('--------------------')
%% Uppgift 1
disp('Uppgift 1')
% help tan


s=0.01;
x = (-pi/2)+s:0.01:(pi/2)-s;
plot(x,tan(x)), grid on
 % mar ritar upp tan i intervallet (-pi/2)+s till(pi/2)-s där s är ett
 % litet tal för att (-pi/2) och (pi/2) saknar definition 

disp('--------------------')
%% Uppgift 2
disp('Uppgift 2')

x=linspace(0,8);
y=x-(x.*cos(7.*x));
plot(x,y)
title('Uppgift 2')


disp('--------------------')
%% uppgift 3
disp('Uppgift 3')


x=linspace(0,14);
plot ([0 14],[0 0],'green'),text(2.0,-1,'Ground')
fill([0 14 14 0 0],[0 0 -2 -2 0],'g'),text(2.0,-1,'Ground')


hold on
%flera kast med olika vinklar 
plot(x,kastbana(x,15)), text(6.4,1.6,'15^o')
plot(x,kastbana(x,30)), text(6.4,3.2,'30^o')
plot(x,kastbana(x,45)), text(6.4,4.6,'45^o')
plot(x,kastbana(x,60)), text(2.0,5.2,'60^o')
axis([0 14 -2 6]), grid on

% vi delar upp funktionen i delar för att det ska bli lättar att hålla reda
% på vad som står för annars hade det bra blivit ett jättelångt frunktion
% som är svår att rätta ifall det blir något fel
disp('--------------------')
%% uppgift 4
disp('Uppgift 4')
%ska man rita dom beronde i ett 
t=linspace(0,2*pi);

x= (cos(t)+cos(3.*t));
y=sin(2.*t);
x2= (cos(t)+cos(4.*t));


subplot(1,2,1)
plot(y,x)
axis equal
title('cos(t)+cos(3.*t)')

subplot(1,2,2)
plot(x2,y)
axis equal
title('cos(t)+cos(4.*t)')

% axis equal % annars blir cirkeln tillplattad
disp('--------------------')
%% uppgift 5
disp('Uppgift 5')
t=linspace(0,2*pi);

%cirkel
x=cos(t); y=sin(t);
fill(x,y,'g')
axis equal
axis([-1 1 -1 1])
grid on
hold on

%kvadrat
n=cos(pi/4);
x2=[n n -n -n n];
y2=[n -n -n n n];
plot(x2,y2)
fill(x2,y2,'y')
title('Uppgift 5')

disp('--------------------')
%% test Lösninganrna finns ovan

































%% uppgift 1 show

s=0.01;
x = (-pi/2)+s:0.01:(pi/2)-s;
subplot(3,2,1)
plot(x,tan(x)), grid on
title('Uppgift 1')
 % mar ritar upp tan i intervallet (-pi/2)+s till(pi/2)-s där s är ett
 % litet tal för att (-pi/2) och (pi/2) saknar definition 


%% Uppgift 2 show


x=linspace(0,8);
y=x-(x.*cos(7.*x));
subplot(3,2,2)
plot(x,y)
title('Uppgift 2')



%% uppgift 3 show



x=linspace(0,14);
subplot(3,2,3)
plot ([0 14],[0 0],'green'),text(2.0,-1,'Ground')
fill([0 14 14 0 0],[0 0 -2 -2 0],'g'),text(2.0,-1,'Ground')


hold on

%flera kast med olika vinklar 
plot(x,kastbana(x,15)), text(6.4,1.6,'15^o')
plot(x,kastbana(x,30)), text(6.4,3.2,'30^o')
plot(x,kastbana(x,45)), text(6.4,4.6,'45^o')
plot(x,kastbana(x,60)), text(2.0,5.2,'60^o')
axis([0 14 -2 6]), grid on
title('Uppgift 3')

% vi delar upp funktionen i delar för att det ska bli lättar att hålla reda
% på vad som står för annars hade det bra blivit ett jättelångt frunktion
% som är svår att rätta ifall det blir något fel
%% uppgift 4 show

%ska man rita dom beronde i ett 
t=linspace(0,2*pi);

x= (cos(t)+cos(3.*t));
y=sin(2.*t);
x2= (cos(t)+cos(4.*t));

subplot(3,2,4)
plot(y,x)
axis equal
hold on
title('Uppgift 4')

subplot(3,2,5)
plot(x2,y)
axis equal
title('Uppgift 4')
%% Uppgift 5 show
t=linspace(0,2*pi);
subplot(3,2,6)
%cirkel
x=cos(t); y=sin(t);
fill(x,y,'g')
axis equal
axis([-1 1 -1 1])
grid on
hold on

%kvadrat
n=cos(pi/4);
x2=[n n -n -n n];
y2=[n -n -n n n];
plot(x2,y2)
fill(x2,y2,'y')
title('Uppgift 5')
% Anton Hedén