%% Ordinära differentialekvationer  Anton Hedén
clc
disp('Ordinära differentialekvationer Anton Hedén')
disp('--------------------')

%% Uppgift 1
disp('Uppgift 1')
disp(' ')
figure(1)
% röd = sämst aproximation
% gul = mitten aproximation
% grön = bäst  aproximation
% f=@(t,u)-u+sin(t)+cos(t);  %u' 
f=@(t,u)cos(3*t)-(u*sin(5*t));  %u' 
a=0; b=15; % gränser för t
ua=2; %begynnelsevärdet 


N=150; h=(b-a)/N;%antal steg och steglängd
t=a+(0:N)*h; %a+nh vektor n från 0 till N
u=zeros(size(t));% N styck nollor
u(1)=ua; % U(1)=ua; tar första sifran ut ur U och sätter den lika med ua 

for n=1:N %kör N gånger
    u(n+1)=u(n)+h*f(t(n),u(n));% beräknar vatje tal i vketorn genom eulers metod 
end
plot(t,u,'r')
hold on


%-------------------
N=1500; h=(b-a)/N;%antal steg och steglängd
t=a+(0:N)*h; %a+nh vektor n från 0 till N
u=zeros(size(t));% N styck nollor
u(1)=ua; % U(1)=ua; tar första sifran ut ur U och sätter den lika med ua 

for n=1:N %kör N gånger
    u(n+1)=u(n)+h*f(t(n),u(n));% beräknar vatje tal i vketorn genom eulers metod 
end
plot(t,u,'color',[1 .8 0])
hold on

%---------------------------
N=15000; h=(b-a)/N;%antal steg och steglängd
t=a+(0:N)*h; %a+nh vektor n från 0 till N
u=zeros(size(t));% N styck nollor
u(1)=ua; % U(1)=ua; tar första sifran ut ur U och sätter den lika med ua 

for n=1:N %kör N gånger
    u(n+1)=u(n)+h*f(t(n),u(n));% beräknar vatje tal i vketorn genom eulers metod 
end
plot(t,u,'g')
title('Uppgift 1)')

hold off



disp('--------------------')
%% Uppgift 2
%min_ode



disp('--------------------')
%% Uppgift 3
disp('Uppgift 3')
disp(' ')
%a)
f=@funkA;  
%f=@(t,u)t^2;  %u' 
a=1; b=3;     I=[a b]; % gränser för t
ua=1; %begynnelsevärdet 
h=0.1;%antal steg och steglängd
[t,u]=min_ode(f,I,ua,h);
figure(3)
plot(t,u,'r')
hold on
h=0.001;%antal steg och steglängd
[t,u]=min_ode(f,I,ua,h);
plot(t,u,'color',[1 .8 0])
title('3 a)')
%exakt lösning 
u=(t.^3+2)./3;
plot(t,u,'g')


% clear
%b)
% y=funk(t,u)
% f=@(t,u)u;  %u'    funtioner som beror på u(t) fungerar inte 
f=@funkB;
a=0; b=2;     I=[a b]; % gränser för t
ua=1; %begynnelsevärdet u(Un)=ua
h=.1;% steglängd
[t,u]=min_ode(f,I,ua,h);
figure(4)
plot(t,u,'r')
hold on
h=0.001;%antal steg och steglängd
[t,u]=min_ode(f,I,ua,h);
plot(t,u,'color',[1 .8 0])
title('3 b)')
%exakt lösning 
u=exp(t);
plot(t,u,'g')

%c)
% f=@(t,u)(-t)*u;  %u' 
f=@funkC;
a=0; b=3;     I=[a b]; % gränser för t
ua=1; %begynnelsevärdet 
h=.1;% steglängd
[t,u]=min_ode(f,I,ua,h);
figure(5)
plot(t,u,'r')
hold on
h=0.001;%antal steg och steglängd
[t,u]=min_ode(f,I,ua,h);
plot(t,u,'color',[1 .8 0])
title('3 c)')
%exakt lösning 
u=exp(-t.^2/2);
plot(t,u,'g')

%d)
% f=@(t,u)-5*u;  %u' 
f=@funkD;
a=0; b=1;     I=[a b]; % gränser för t
ua=2; %begynnelsevärdet 
h=.1;%antal steg och steglängd
[t,u]=min_ode(f,I,ua,h);
figure(6)
plot(t,u,'r')
hold on
h=0.001;%antal steg och steglängd
[t,u]=min_ode(f,I,ua,h);
plot(t,u,'color',[1 .8 0])
title('3 d)')
%exakt lösning 
u=2*exp(-5*t);
plot(t,u,'g')


disp('--------------------')
%% Uppgift 4
disp('Uppgift 4')
disp(' ')

f=@(t,u)cos(3*t)-(u*sin(5*t));  %u' 
a=0; b=15; % gränser för t
ua=2; %begynnelsevärdet 
[t,U]=ode45(f,[a b],ua);
figure(7)
plot(t,U)
title('Uppgift 4')


disp('--------------------')
%% Uppgift 5
disp('Uppgift 5')
disp(' ')

disp('--------------------')