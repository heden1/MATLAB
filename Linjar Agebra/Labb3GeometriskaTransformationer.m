%% Geometriska transformationer  Anton Hedén
clc
disp('Geometriska transformationer Anton Hedén')
disp('--------------------')

%% Uppgift 1
%Rotera och translatera ett polygonområde ni genererar sj¨alva, t.ex. en triangel.
disp('Uppgift 1')
X=[2 6 8];
Y=[1 4 3];

disp(' ')
fill(X,Y,'g','edgecolor','k','linewidth',1), hold on
axis equal,axis([-5 10 -0.1 10]), pause(1)
v=pi/6; A=[cos(v) -sin(v); sin(v) cos(v)];
P=[X;Y];
for i=1:3
    P=A*P; % Varje koordinatpar roteras med vinkeln pi/6
    fill(P(1,:),P(2,:),'g','edgecolor','r','linewidth',1), pause(1)
end
plot(0,0,'ko','linewidth',2,'markersize',2) % origo
hold off


disp('--------------------')
%% Uppgift 2
disp('Uppgift 2')
disp(' ')

H= [(2*sqrt(2))/3 -sqrt(2)/3 -sqrt(2)/3 0
   0 sqrt(2/3) -sqrt(2/3) 0
   -1/3 -1/3 -1/3 1];
S=[1 2 3 % S(i,:), i:te raden i S, ger nr på hörnpunkter på sida i
1 2 4
1 4 3
2 3 4]; % size(S,1) ger antal sidor
figure(2), clf, hold on
for i=1:size(S,1)
Si=S(i,:); fill3(H(1,Si),H(2,Si),H(3,Si),'g','facealpha',0.7)
end
axis equal, axis tight, axis off, hold off, view(20,10)



disp('--------------------')
%% Uppgift 3
clear v
clear i
v=pi/4;
disp('Uppgift 3')
disp(' ')
H= [(2*sqrt(2))/3 -sqrt(2)/3 -sqrt(2)/3 0
   0 sqrt(2/3) -sqrt(2/3) 0
   -1/3 -1/3 -1/3 1];
S=[1 2 3 % S(i,:), i:te raden i S, ger nr på hörnpunkter på sida i
1 2 4
1 4 3
2 3 4]; % size(S,1) ger antal sidor

A=[1 0 0
    0 cos(v) -sin(v)
    0 sin(v) cos(v)];


T=[1;0;1];
%transilation
H=H+T;


figure(3), clf, hold on
for i=1:size(S,1)
Si=S(i,:); fill3(H(1,Si),H(2,Si),H(3,Si),'g','facealpha',0.7)
end
ax=[-1.5 3.5 -2.5 2.5 -2.5 2.5]; % Gr¨anser f¨or koordinataxlarna, ax=[xmin xmax ymin ymax zmin zmax].
axis equal, hold on,axis(ax), view(70,10),pause(1)
xlabel('x') 
ylabel('y')
zlabel('z')
t = -2:0.1:4;
st = 0*(t);
ct = 0*(t);
plot3(t,ct,st)
v=pi/4;
P=H;
for i=1:8
    P=A*P; % Varje koordinatpar roteras med vinkeln pi/6
    for i=1:size(S,1)
    Si=S(i,:); fill3(P(1,Si),P(2,Si),P(3,Si),'r','facealpha',0.7)
    end
    pause(1)
%     fill(P(1,:),P(2,:),'g','edgecolor','r','linewidth',1), pause(1)
end

hold off


disp('--------------------')
%% Uppgift 4
disp('Uppgift 4')
disp(' ')
ax=[-1.5 3.5 -2.5 2.5 -2.5 2.5]; % Gr¨anser f¨or koordinataxlarna, ax=[xmin xmax ymin ymax zmin zmax].
% Dessa s¨atts s˚a att hela scenen f˚ar plats
v=pi/30; % Liten vinkel f¨or upprepad rotation, t.ex. v=pi/8
A=[1 0 0
    0 cos(v) -sin(v)
    0 sin(v) cos(v)]; % Rotationsmatrisen
H= [(2*sqrt(2))/3 -sqrt(2)/3 -sqrt(2)/3 0
   0 sqrt(2/3) -sqrt(2/3) 0
   -1/3 -1/3 -1/3 1];
T=[1;0;1];
%transilation
H=H+T;
P=H; % H ¨ar matrisen med tetraederns koordinater
clf
figure(4)
hold on
t = -2:0.1:4;
st = 0*(t);
ct = 0*(t);
plot3(t,ct,st)
for i=1:size(S,1) % Rita tetraedern
    Si=S(i,:); fill3(P(1,Si),P(2,Si),P(3,Si),'g')
end
hold off
axis equal, axis(ax),view(70,10) % Undvik deformation och anv¨and samma skalor p˚a axlarna
box on, grid on % F¨orst¨arker tredimensionella k¨anslan n˚agot
pause(0.5) % Paus s˚a vi hinner se tetraedern innan den roteras
kmax=120; % Antal sm˚a rotationer, t.ex. kmax=16; (kmax*v=2*pi, ett varv)
for k=1:kmax % Rotera kmax g˚anger
    P=A*P;
    clf
    hold on
    for i=1:size(S,1) % Rita tetraedern i nya positionen
        Si=S(i,:); fill3(P(1,Si),P(2,Si),P(3,Si),'g')
    end
    plot3(t,ct,st)
    hold off
    axis equal, axis(ax),view(70,10), box on, grid on
    pause(1/30)
end

disp('--------------------')
%% Uppgift 5
disp('Uppgift 5')
disp(' ')

disp('--------------------')