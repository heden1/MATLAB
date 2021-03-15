%% Newtons metod Anton Hedén
clc
disp('Newtons metod Anton Hedén')
disp('--------------------')

%% Uppgift 1
disp('Uppgift 1')
disp(' ')

% plotar grafen 
figure(1)
subplot(2,2,1)
f=@(x) (x.^3 - (cos(4.*x)));
x1=linspace(-10,10,10000);
plot(x1,f(x1))
hold on
plot ([-10 10],[0 0],'k')%plottar x axeln
axis([-2 2 -2 2]), grid on
title('Uppgift 1')

format long

% beräknar nollställen 
Df=@(x) (3.*x^2 + 4.*(sin(4.*x))); %Df = f'(x)
kmax=10;
tol=10^-8; %noggranheten 
x=-1;
% första nolstället
for k=1:kmax
    h=-f(x)/Df(x);
    x=x+h;
%     disp([x h]);
    if abs(h)<tol, break, end
end

plot(x,f(x),'d')
% disp([x f(x)])
fprintf('Första lösningen till f(x)=0 aproximeras till x = %f\n',x);
disp(x)

%andra nollstället
x=-0.3;
for k=1:kmax
    h=-f(x)/Df(x);
    x=x+h;
    if abs(h)<tol, break, end
end
plot(x,f(x),'d')
fprintf('Andra lösningen till f(x)=0 aproximeras till x = %f\n',x);
disp(x)

% tredje nollstället
x=0.5;
for k=1:kmax
    h=-f(x)/Df(x);
    x=x+h;
    if abs(h)<tol, break, end
end
plot(x,f(x),'d')
fprintf('Tredje lösningen till f(x)=0 aproximeras till x = %f\n',x);
disp(x)
hold off
disp('--------------------')
%% Uppgift 2
disp('Uppgift 2')
disp(' ')
% help min_newton
tol=10^-8; %noggranheten 
f=@(x)cos(x)-x;
Df=@(x)-sin(x)-1; %Df = f'(x)
x0=0;

%plottar grafen
x1=linspace(-10,10,10000);
subplot(2,2,2);
hold on
plot(x1,f(x1))

plot ([-10 10],[0 0],'k')
axis([-5 5 -5 5]), grid on
title('Uppgift 2')

%beräknar lösning
x=min_newton(f,Df,x0,tol);
fprintf('Lösningen till f(x)=0 aproximeras till x = %f\n',x);
disp(x);
plot(x,f(x),'o')
disp('--------------------')
%% Uppgift 3
disp('Uppgift 3')
disp(' ')
disp('a)')

hold on
% konstanter 
tol=10^-8; %noggranheten 

% a)
%plotar grafen

f=@(x) 0.5*(x-2).^2 - 2.*cos(2.*x)-1.5;
Df=@(x)(x-2)+ 4.*sin(2.*x); %Df = f'(x)
x1=linspace(-10,10,10000);
subplot(2,2,3);
hold on
plot(x1,f(x1))

plot ([-10 10],[0 0],'k')
axis([-5 7 -10 10]), grid on
title('Uppgift 3a')



% beräknar nollställerna 
x0=-1;
x=min_newton(f,Df,x0,tol);
fprintf('Första lösningen till f(x)=0 aproximeras till x = %f\n',x);
disp(x);
plot(x,f(x),'o')

x0=1;
x=min_newton(f,Df,x0,tol);
fprintf('Andra lösningen till f(x)=0 aproximeras till x = %f\n',x);
disp(x);
plot(x,f(x),'o')

x0=2;
x=min_newton(f,Df,x0,tol);
fprintf('Tredje lösningen till f(x)=0 aproximeras till x = %f\n',x);
disp(x);
plot(x,f(x),'o')

x0=4;
x=min_newton(f,Df,x0,tol);
fprintf('Fjärde lösningen till f(x)=0 aproximeras till x = %f\n',x);
disp(x);
plot(x,f(x),'o')


% b)

disp(' ')
disp('b)')

%plotar grafen
f=@(x) x.^3 -cos(4.*x);
Df=@(x)(3.*x.^2) + 4.*sin(4.*x); %Df = f'(x)
x1=linspace(-10,10,10000);
subplot(2,2,4);
hold on
plot(x1,f(x1))

plot ([-10 10],[0 0],'k')
axis([-3 3 -5 5]), grid on
title('Uppgift 3b')



% beräknar nollställerna 
x0=-1.2;
x=min_newton(f,Df,x0,tol);
fprintf('Första lösningen till f(x)=0 aproximeras till x = %f\n',x);
disp(x);
plot(x,f(x),'o')

x0=-0.4;
x=min_newton(f,Df,x0,tol);
fprintf('Andra lösningen till f(x)=0 aproximeras till x = %f\n',x);
disp(x);
plot(x,f(x),'o')

x0=0.4;
x=min_newton(f,Df,x0,tol);
fprintf('Tredje lösningen till f(x)=0 aproximeras till x = %f\n',x);
disp(x);
plot(x,f(x),'o')

disp('--------------------')
%% Uppgift 4
disp('Uppgift 4')
disp(' ')
figure(2)
subplot(1,1,1)
g=@(x)(3+sin(2.*x));
h=@(x)(1+(exp(0.003*x.^2)));
f=@(x)((g(x)./h(x)))-1.2

%plotar grafen
x=linspace(-19,19,100000);
hold on 
plot(x,f(x))
axis([-19 19 -2 2]), grid on
title('Uppgift 4')
hold on 

% plottar x axeln
plot ([-19 19],[0 0],'k')



% ginput låtter användaren gissa alla nollställen och ritar sedan an cirkel
% i det närmsta nollstället 
text(-15, 1.5, ['Tryck på de punkter där  ', char(10), 'det ser ut som grafen skär x axeln.',char(10),'Avsluta med att högerklicka']) % Förklarar vad som ska göras när man ritar in grafen
n=0;
while 1 % För evigt,1 står ju för sant
       [xi,yi,knapp]=ginput(1); % Ny punkt, knapp är den musknapp som trycktes på

    if knapp~=1 % Om knapp inte vänster musknapp ...
         break % ... så avbryts whilesatsen
    end
        %plot(xi,0,'o')% ... och ritas ut den punkt du tryckte på
        x=fzero(f,xi); %beräknar f(x)= 0
        plot(x,0,'o')% ... och ritar ut närmaste lösning till den punkt du tryckt på
        n=n+1; % berättar vilken punkt vi är på 
        fprintf('Lösningen i punkt %.0f aproximeras till x = %f\n',n,x);
end 


disp('--------------------')
