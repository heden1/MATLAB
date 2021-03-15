%% Minsta-kvadratmetoden Anton Hedén
clc
disp('Minsta-kvadratmetoden Anton Hedén')
disp('--------------------')
% dot(u,v)%skalärprodukt
% norm(u)%Normen (absolutbeloppet av en vektor  
% phi=acos(dot(u,v)/(norm(u)*norm(v)))%vinkeln mellan två vektorer 
% u=v/norm(v)%skapa vektorn som är i samma riktining som v fast 1 lång (enhetsvektorn i v;s riktning)
% norm(u-v)%avståndet mellan två vektorer 
% cross(u,v)%bereknarkryssprodukt 
%% Uppgift 1
disp('Uppgift 1')
disp(' ')

td=[5 6 7 8 9 10]';              % t-data
yd=[19.5888 23.4043 25.5754 29.1231 31.9575 35.8116]';   % y-data

A=[ones(size(td)) td]    ;       % Designmatrisen 1 or i första kolumnen td i andra cloumnen 
x=A\yd;
a=x(1); b=x(2);              % Minsta-kvadratl¨osningen
n=length(td);                        % Antalet m¨atdata
e=norm(A*x-yd)/sqrt(n);              % Kvadratiska medelfelet
a
b

e


t=linspace(td(1)-1,td(n)+1);
yt=@(t)(a+b*t);
plot(td,yd,'o'); hold on
plot(t,yt(t));
grid on

str = {"a = "+ a,"b = "+b," ","e = "+e};
text(9,25,str)
hold off
disp('--------------------')
%% Uppgift 2
disp('Uppgift 2')
disp(' ')

td=[1 2 3 4 5 6 7 8 9 10 11 12]'; % t-data
yd=[-0.9 -0.9 2.0 6 11.6 15.5 16.6 16.2 12.8 9.1 4.4 1.0]'; % y-data
w=3/(pi*2); 
w=(pi*2)/12; 
A=[ones(size(td)) sin(w*td) cos(w*td)]; % Designmatrisen
x=A\yd; % Minsta-kvadratl¨osningen
c1=x(1); c2=x(2); c3=x(3);

n=length(td); % Antalet m¨atdata
e=norm(A*x-yd)/sqrt(n); % Kvadratiska medelfelet


c1
c2
c3

e
start=0; stop=12;

t=linspace(start,stop);
% t=linspace(td(1)-1,24);

yt=@(t)c1 +c2*sin(w*t)+c3*cos(w*t);
% yt=@(t)c1 +c2*t+c3*t.^2;
plot(td,yd,'o'); hold on
plot(t,yt(t));
axis([start stop -5 20]);

str = {"c1 = "+ c1,"c2 = "+c2,"c3 = "+c3," ","e = "+e};

text(8,5,str)

grid on
hold off
disp('--------------------')
%% Uppgift 3
disp('Uppgift 3')
disp(' ')

load('Labb6Labdata')

A=[ones(size(td)) sd td]; % Designmatrisen

x=A\yd; % Minsta-kvadratl¨osningen
a=x(1); b=x(2); c=x(3);

n=length(td); % Antalet m¨atdata
e=norm(A*x-yd)/sqrt(n); % Kvadratiska medelfelet



e
a
b
c


s=linspace(sd(1),sd(n));
t=linspace(td(1),td(n));


%plot punkter
plot3(sd,td,yd,'o'); hold on; grid on
%plot linje 
yt=@(s,t)(a+b*s+c*t);
plot3(s,t,yt(s,t),'r');
xlabel('x'), ylabel('y'),zlabel('z')

str = {"a = "+ a,"b = "+b,"c = "+c," ","e = "+e};
text(45,35,230,str)



str = {"y(s,t) = "+ a+" + "+b+"s + "+c+"t"};
text(60,30,360,str)



%plot plan 
xmin=40; xmax=80; ymin=25; ymax=35; %zmin=250; zmax=350;

X=[xmin xmax xmax xmin]; Y=[ymin ymin ymax ymax];
% Z=[zmin zmin zmax zmax];

f=(a+b*sd(1)+c*td(1))/(yt(sd(1),td(1))); 

Z=(a+b*X+c*Y)/f;
fill3(X,Y,Z,'g','facealpha',0.3)


str={"planets ekvation",b+ "x + "+c+"y - "+f+"z = "+a*(-1)};
text(50,30,300,str)


hold off

disp('--------------------')
