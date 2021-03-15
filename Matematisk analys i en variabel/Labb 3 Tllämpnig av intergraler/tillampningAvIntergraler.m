%% Tillämpning av intergraler Anton Hedén
clc
disp('Tillämpning av intergraler Anton Hedén')
disp('--------------------')

%% Uppgift 1
disp('Uppgift 1')
disp(' ')

f=@(x)(1.5+sin(0.02*x.^2));%funktionen
Df=@(x)0.04*x.*cos(0.02*x.^2); %des derivata
a=0; b=25;%gränspunkter 
V=pi*integral(@(x)f(x).^2,a,b)%beräknar Volymen

A=2*pi*integral(@(x)abs(f(x)).*sqrt(1+Df(x).^2),a,b)%Beräcknar arean på rotationskroppen

% 
% f=@(x)(1*x);%funktionen
% Df=@(x)(1); %des derivata
% a=0; b=1;%gränspunkter 
% 
% V=pi*integral(@(x)f(x).^2,a,b)
% S=2*pi*integral(@(x)abs(f(x)).*sqrt(1+Df(x).^2),a,b)%Beräcknar arean på rotationskroppen



disp('--------------------')
%% Uppgift 2
disp('Uppgift 2')
disp(' ')
l=0.1;
gr=9.82;

g=@(t,x) (1./(sqrt(1-(sin(x./2)).^2*(sin(t)).^2))); % Integranden, om vi g¨or ett funktionshandtag t=00 x=0
c=0; d= pi/2; % Integrationsgr¨anserna
a=0*(pi/180); b=170*(pi/180); n=18; % Intervallgr¨anser f¨or grafen samt antal punkter
x=linspace(a,b,n); % x-v¨ardena  0-170 med 10 grade varje steg 

T=zeros(size(x)); % F¨ordimensionering. Skall fylla p˚a integralv¨ardena  ger f värdet 0 0 0...0 0 n gånger =18gånger  

%beräknar pendeltiden för varje start position 
for i=1:length(x) %gör så att loopen körs n gånger
    T(i)=4*sqrt(l/gr)*(integral(@(t)g(t,x(i)),c,d)); % f(x)-v¨ardena  iintergrerar med avsånde på t där x förändras för varje nytt varv 
end
T;
%plottar grafferna 
figure(1)
plot(x,T) % Ritar grafen
hold on
plot (x,T,'o')
ylabel('Tid')
xlabel('radianer') 

hold off

figure(2)
plot(x*(180/pi),T) % Ritar grafen
hold on
plot (x*(180/pi),T,'o')
ylabel('Tid')
xlabel('grader') 
hold off



disp('--------------------')