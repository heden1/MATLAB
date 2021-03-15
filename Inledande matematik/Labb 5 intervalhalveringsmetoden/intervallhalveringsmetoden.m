%% Intervallhalveringsmetoden Anton Hedén
clc
disp('Intervallhalveringsmetoden Anton Hedén')
disp('--------------------')

%% Uppgift 1
disp('Uppgift 1')

subplot(2,1,1)
f=@(x)(x-2.5).*exp(-0.5*(x-2).^2)+0.2;
x=linspace(-2,7);
plot(x,f(x))
axis([-2 7 -1 1]), grid on
disp('--------------------')
%% Uppgift 2
disp('Uppgift 2')
f=@(x)(x-2.5).*exp(-0.5*(x-2).^2)+0.2;
a=-1;
b=0;

if f(a).*f(b)<0
    m=(a+b)/2;
    if f(a).*f(m)<0
        b=m;
    else 
        a=m;
    end
end
[a b]

disp('--------------------')
%% Uppgift 3
disp('Uppgift 3')
f=@(x)(x-2.5).*exp(-0.5*(x-2).^2)+0.2;

%           f   - funktionshandtag: pekar på namnet till en funktionsfil eller
%                 till en anonym funktion. T.ex. f=@funk eller f=@(x)cos(x)-x
%           I   - 1x2 matris, anger ett intervall I=[a,b]. Funktionen måste 
%                 växla tecken på intervallet.
%           tol - positivt tal som anger önskad noggrannhet för nollstället.
% hittar första nolstället mellan -1<x<0
x1 = min_bisect(f,[-1,0],1e-5)


%   Returnerar:
%           x1   - ett tal som ger approximativt nollställe.

disp('--------------------')
%% Uppgift 4
disp('Uppgift 4')
f=@(x)(x-2.5).*exp(-0.5*(x-2).^2)+0.2;

% hittar första nolstället mellan -1<x<0
x1 = min_bisect(f,[-1,0],1e-5)

% hittar andra nolstället mellan 2<x<3
x2 = min_bisect(f,[2,3],1e-5)

%   Returnerar:
%           x1 och x2   -  tal som ger approximativt nollställen.

disp('--------------------')
%% Uppgift 5
disp('Uppgift 5')
f=@(x)(x-2.5).*exp(-0.5*(x-2).^2)+0.2;

% plotar kastbana

x=linspace(0,30);
plot(x,kastbana(x))
axis([0 15 0 5]),
grid on

% beräknar längden på kastet
a=10; % kastet träffar marken efter 10m
b=15; % men innan 15m


l = min_bisect(@kastbana,[a,b],1e-5)

disp('--------------------')