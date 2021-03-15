%% Intergraler Anton Hedén
clc
clear
disp('Intergraler Anton Hedén')
disp('--------------------')

%% Uppgift 1
disp('Uppgift 1')
disp(' ')

%konstanter
n=100
a=0; b=1;
f=@(x)x.*sin(x);
h=(b-a)/n;
format long

% x värde för vänsterregtantgel 
x1=linspace(a,b-h,n);

% x värde för högerregtantgel 
x2=linspace(a+h,b,n);


% undersumma vänster rektangelregler
q=sum(h*f(x1));
fprintf('Undersumma vänster rektangelregler %f\n',q);
disp(q)
disp(' ')

% översumma höger rektangelregler;
q=sum(h*f(x2));
fprintf('Översumma höger rektangelregler %f\n',q);
disp(q)
disp(' ')

% mittpunktsmetoden
q=sum(h*(f((x2+x1)./2)));
fprintf('Mittpunktsmetoden %f\n',q);
disp(q)
disp(' ')

% trapetsmetoden
q=sum((h./2.)*(f(x1)+f(x2)));
fprintf('Trapetsmetoden %f\n',q);
disp(q)
disp(' ')



disp('--------------------')
%% Uppgift 3
disp('Uppgift 3')
disp(' ')


disp('a)')
f=@(x)exp(-x.^2);
I=[0,1];
n=100;
k= 4; % = 1,2,3,4   rektangelmetoden vänster (k=1), rektangelmetoden höger (k=2), mittpunktsmetoden (k=3) eller trapetsmetoden (k=4).
q = min_integral(f,I,n,k)
disp(' ')


disp('b)')
f=@(x)1./(1+x.^2);
I=[-1,1];
n=50;
k= 3;% = 1,2,3,4   rektangelmetoden vänster (k=1), rektangelmetoden höger (k=2), mittpunktsmetoden (k=3) eller trapetsmetoden (k=4).
q =  min_integral(f,I,n,k)
disp(' ')

disp('c)')
f=@(x)tan(sqrt(x));
n=75;
I=[0,1];
k= 2;% = 1,2,3,4   rektangelmetoden vänster (k=1), rektangelmetoden höger (k=2), mittpunktsmetoden (k=3) eller trapetsmetoden (k=4).
q =  min_integral(f,I,n,k)


disp('--------------------')
%% Uppgift 4
disp('Uppgift 4')
disp(' ')
f=@(x)x.*sin(x);
I=[0,1];
disp(' intergralen är "exakt" 0,30116867893975678925156571418732')
k= 4;% = 1,2,3,4   rektangelmetoden vänster (k=1), rektangelmetoden höger (k=2), mittpunktsmetoden (k=3) eller trapetsmetoden (k=4).

n=50;
q =  min_integral(f,I,n,k)
n=100;
q =  min_integral(f,I,n,k)
disp('--------------------')
%% Uppgift 5
disp('Uppgift 5')
disp(' ')
f=@(x)sin(x);
g=@(x)cos(x);
fg=@(x)sin(x)-cos(x);
afg=@(x)abs(sin(x)-cos(x));

% beräknar 2 skrärningso´pinketer 
xl=0.5;
a=fzero((fg),xl);
% (pi)./4
xl=3.5;
b=fzero((fg),xl);
% (5.*pi)./4

q=integral(afg,a,b)

disp('--------------------')
%% Uppgift 6
disp('Uppgift 6')
disp(' ')
g=@(x)exp((-x.^2)./2.);
h=@(x)x.^2-3.*x+2;
gh=@(x)(exp((-x.^2)./2.))-(x.^2-3.*x+2.);
agh=@(x)(abs(exp((-x.^2)./2.))-(x.^2-3.*x+2.));

xl=0.5;
a=fzero((gh),xl);

xl=3.5;
b=fzero((gh),xl);

q=integral(agh,a,b)

x=linspace(0,3);
plot(x,g(x))
hold on
plot (x,h(x))

%fyll mellan kurvorna
xb=linspace(a,b);
x2 = [xb, fliplr(xb)];
inBetween = [g(xb), fliplr(h(xb))];
fill(x2, inBetween, [1 0.8 0.4]);

% skriver ut arean mellan graferna
t=text(1.1, 0.1, ['Area = ' num2str(q)]);
t.FontSize = 12;

hold off

disp('--------------------')