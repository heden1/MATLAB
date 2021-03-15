%% Linjära system av differentialekvationer  Anton Hedén
clc
disp('Linjära system av differentialekvationer Anton Hedén')
disp('--------------------')

%% test copy
u1=linspace(-2,2,30); u2=linspace(-2,2,30);
[U1,U2]=meshgrid(u1,u2);
F1=@(u1,u2)u1-u2; F2=@(u1,u2)u1.*u2; s=1.2;
quiver(U1,U2,F1(U1,U2),F2(U1,U2),s) % s - skalfaktor som f¨orl¨anger pilarna.
axis([-2 2 -2 2])

s1=[-1.2 -1.1 0.35 0.4]; % F¨orsta-koordinater f¨or fyra startpunkter
s2=[-2 -2 0.2 0.2]; % och deras andra-koordinater
h=streamline(U1,U2,F1(U1,U2),F2(U1,U2),s1,s2);
set(h,'Color','r','LineWidth',2),hold on


hold off


%% Uppgift 1
disp('Uppgift 1')
disp(' ')

%% a 
clear 
clc
A=[1 -2;3 -4];T=5;
c1=-3;%startvärde x
c2=5;%startvärde y
u0=[c1;c2];


F=@(t,u)A*u;

[t,U]=ode45(F,[0 T],u0);
% xaxeln                    yaxeln
u1=linspace(-7,7,30); u2=linspace(-7,7,30);
[U1,U2]=meshgrid(u1,u2);
F1=A(1,1)*U1+A(1,2)*U2; F2=A(2,1)*U1+A(2,2)*U2;
quiver(U1,U2,F1,F2,0.9),hold on



axis([-7 7 -5 5])
hold on
plot(U(:,1),U(:,2),'r','LineWidth',2)

%fasporträt
%till höger om linjen 
step=0.2;
lines=3; %antalet linjer på var sida om orginalinjen 
for cf = c1+step:step:c1+lines*step
    u0=[cf;c2];
    [t,U]=ode45(F,[0 T],u0);
    plot(U(:,1),U(:,2),'g','LineWidth',2)
end

%fasporträt till vänster 
for cf = c1-step:-step:c1-lines*step
    u0=[cf;c2];
    [t,U]=ode45(F,[0 T],u0);
    plot(U(:,1),U(:,2),'g','LineWidth',2)
end


hold off

%% b 
clear 
clc

A=[0 3;-12 1];,T=6;
c1=2;%startvärde x
c2=4;%startvärde y
u0=[c1;c2];


F=@(t,u)A*u;

[t,U]=ode45(F,[0 T],u0);
% xaxeln                    yaxeln
u1=linspace(-100,100,60); u2=linspace(-100,100,60);
[U1,U2]=meshgrid(u1,u2);
F1=A(1,1)*U1+A(1,2)*U2; F2=A(2,1)*U1+A(2,2)*U2;
quiver(U1,U2,F1,F2,0.9),hold on



axis([-30 30 -30 30])
axis equal
hold on
plot(U(:,1),U(:,2),'r','LineWidth',2)

%fasporträt
%till höger om linjen 
step=0.5;
lines=2; %antalet linjer på var sida om orginalinjen 
for cf = c1+step:step:c1+lines*step
    u0=[cf;c2];
    [t,U]=ode45(F,[0 T],u0);
    plot(U(:,1),U(:,2),'g','LineWidth',2)
end

%fasporträt till vänster 
for cf = c1-step:-step:c1-lines*step
    u0=[cf;c2];
    [t,U]=ode45(F,[0 T],u0);
    plot(U(:,1),U(:,2),'g','LineWidth',2)
end


hold off

disp('--------------------')
%% Uppgift 2
disp('Uppgift 2')
disp(' ')

%% a är en sadelpunkt
clear
clc
figure (1)
% a från origo om man inte sätter en punkt innan med lutning -0.2 så bildas
% en rätt limje som träffar origo
A=[-2 -5;1 4];T=5;
[V,D]=eig(A); %D = egenvärden (längs diagonalen), V= egenvektorer är kolonerna i V
D
k1=V(2,1)/V(1,1);%lika med lutningnen innan origo 
k2=V(2,2)/V(1,2);%lika med lutningnen ut ifrån origo




F=@(t,u)A*u;


% xaxeln                    yaxeln
u1=linspace(-2,2,30); u2=linspace(-2,2,30);
[U1,U2]=meshgrid(u1,u2);
F1=A(1,1)*U1+A(1,2)*U2; F2=A(2,1)*U1+A(2,2)*U2;
quiver(U1,U2,F1,F2,0.9),hold on


% v1
quiver(-2,0.4,1,k1,2)
quiver(2,-0.4,-1,-k1,2)

%v2
quiver(0,0,1,k2,2)
quiver(0,0,-1,-k2,2)

axis([-2 2 -2 2])
hold on

text(-1, 1.5, ['Tryck på de punkter som ska vara startpunkt ']) % Förklarar vad som ska göras när man ritar in grafen
[c1,c2]=ginput(1); % Ny punkt, knapp är den musknapp som trycktes på
% c1=1;%startvärde
% c2=1;%startvärde vid startvärde 2 och -10 går sträcket in mot origo [-10;2] med lutningen -0.2 
u0=[c1;c2];
[t,U]=ode45(F,[0 T],u0);
% [t,U]=@(t)c1*V(:,1).^(D(1,1)*t)+c2*V(:,2).^(D(2,2)*t)
%plottar lösningen
plot(U(:,1),U(:,2),'r','LineWidth',2)

%fasporträt
%till höger om linjen 
step=0.1;
lines=3; %antalet linjer på var sida om orginalinjen 
for cf = c1+step:step:c1+lines*step
    u0=[cf;c2];
    [t,U]=ode45(F,[0 T],u0);
    plot(U(:,1),U(:,2),'g','LineWidth',2)
end

%fasporträt till vänster 
for cf = c1-step:-step:c1-lines*step
    u0=[cf;c2];
    [t,U]=ode45(F,[0 T],u0);
    plot(U(:,1),U(:,2),'g','LineWidth',2)
end
hold off
%% b går in mot origo  är en sänka

clear 
clc
A=[1 -2;3 -4];T=10;


[V,D]=eig(A); %D = egenvärden (längs diagonalen), V= egenvektorer är kolonerna i V
D
k1=V(2,1)/V(1,1);%lika med lutningnen
k2=V(2,2)/V(1,2);%lika med lutningnen




F=@(t,u)A*u;


% xaxeln                    yaxeln
u1=linspace(-2,2,30); u2=linspace(-2,2,30);
[U1,U2]=meshgrid(u1,u2);
F1=A(1,1)*U1+A(1,2)*U2; F2=A(2,1)*U1+A(2,2)*U2;
quiver(U1,U2,F1,F2,0.9),hold on



axis([-2 2 -2 2])
hold on


% v1
quiver(-2/k1,-2,1,k1,2,'b','LineWidth',2)
quiver(2/k1,2,-1,-k1,2,'b','LineWidth',2)

%v2
quiver(-2/k2,-2,1,k2,2/k2,'c','LineWidth',2)
quiver(2/k2,2,-1,-k2,2/k2,'c','LineWidth',2)


text(-1, 1.5, ['Tryck på de punkter som ska vara startpunkt ']) % Förklarar vad som ska göras när man ritar in grafen




while 1 % För evigt,1 står ju för sant
    [c1,c2,knapp]=ginput(1); % Ny punkt, knapp är den musknapp som trycktes på


    if knapp~=1 % Om knapp inte vänster musknapp ...
         break % ... så avbryts whilesatsen
    end

    % c1=0;%startvärde x
    % c2=2;%startvärde y
    u0=[c1;c2];


    [t,U]=ode45(F,[0 T],u0);
    plot(U(:,1),U(:,2),'r','LineWidth',2)

    %fasporträt
    %till höger om linjen 
    step=0.1;
    lines=3; %antalet linjer på var sida om orginalinjen 
%     for cf = c1+step:step:c1+lines*step
%         u0=[cf;c2];
%         [t,U]=ode45(F,[0 T],u0);
%         plot(U(:,1),U(:,2),'g','LineWidth',2)
%     end
% 
%     %fasporträt till vänster 
%     for cf = c1-step:-step:c1-lines*step
%         u0=[cf;c2];
%         [t,U]=ode45(F,[0 T],u0);
%         plot(U(:,1),U(:,2),'g','LineWidth',2)
%     end

end 







hold off


%% c går ifrån origo   källa
clear 
clc
A=[5 3;3 5];T=10;

[V,D]=eig(A); %D = egenvärden (längs diagonalen), V= egenvektorer är kolonerna i V
D
V
k1=V(2,1)/V(1,1);%lika med lutningnen
k2=V(2,2)/V(1,2);%lika med lutningnen




% xaxeln                    yaxeln
u1=linspace(-2,2,30); u2=linspace(-2,2,30);
[U1,U2]=meshgrid(u1,u2);
F1=A(1,1)*U1+A(1,2)*U2; F2=A(2,1)*U1+A(2,2)*U2;
quiver(U1,U2,F1,F2,0.9),hold on

% v1
quiver(0,0,-1,-k1,2,'b','LineWidth',2)
quiver(0,0,1,k1,2,'b','LineWidth',2)

%v2
quiver(0,0,1,k2,2/k2,'c','LineWidth',2)
quiver(0,0,-1,-k2,2/k2,'c','LineWidth',2)



axis([-2 2 -2 2])
hold on

while 1 % För evigt,1 står ju för sant
    [c1,c2,knapp]=ginput(1); % Ny punkt, knapp är den musknapp som trycktes på


    if knapp~=1 % Om knapp inte vänster musknapp ...
         break % ... så avbryts whilesatsen
    end

    % c1=0;%startvärde x
    % c2=2;%startvärde y
    u0=[c1;c2];

    F=@(t,u)A*u;
    [t,U]=ode45(F,[0 T],u0);
    plot(U(:,1),U(:,2),'r','LineWidth',2)

    %fasporträt
    %till höger om linjen 
    step=0.1;
    lines=3; %antalet linjer på var sida om orginalinjen 
%     for cf = c1+step:step:c1+lines*step
%         u0=[cf;c2];
%         [t,U]=ode45(F,[0 T],u0);
%         plot(U(:,1),U(:,2),'g','LineWidth',2)
%     end
% 
%     %fasporträt till vänster 
%     for cf = c1-step:-step:c1-lines*step
%         u0=[cf;c2];
%         [t,U]=ode45(F,[0 T],u0);
%         plot(U(:,1),U(:,2),'g','LineWidth',2)
%     end

end 

hold off




%% d går ifrån origo  källa  genom en spiral pga egenvärderna är imaginära   increased ocilation
clear 
clc
A=[1 4;-9 1];T=10;

[V,D]=eig(A); %D = egenvärden (längs diagonalen), V= egenvektorer är kolonerna i V
D(1,1)
D(2,2)



% xaxeln                    yaxeln
u1=linspace(-2,2,30); u2=linspace(-2,2,30);
[U1,U2]=meshgrid(u1,u2);
F1=A(1,1)*U1+A(1,2)*U2; F2=A(2,1)*U1+A(2,2)*U2;
quiver(U1,U2,F1,F2,0.9),hold on



axis([-2 2 -2 2])
hold on

[c1,c2]=ginput(1); % Ny punkt, knapp är den musknapp som trycktes på
% c1=0;%startvärde x
% c2=0.01;%startvärde y
u0=[c1;c2];


F=@(t,u)A*u;
[t,U]=ode45(F,[0 T],u0);
plot(U(:,1),U(:,2),'r','LineWidth',2)



%fasporträt
%till höger om linjen 
step=0.1;
lines=2; %antalet linjer på var sida om orginalinjen 
for cf = c1+step:step:c1+lines*step
    u0=[cf;c2];
    [t,U]=ode45(F,[0 T],u0);
    plot(U(:,1),U(:,2),'g','LineWidth',2)
end

%fasporträt till vänster 
for cf = c1-step:-step:c1-lines*step
    u0=[cf;c2];
    [t,U]=ode45(F,[0 T],u0);
    plot(U(:,1),U(:,2),'g','LineWidth',2)
end



hold off

%% e går som en elipse runt origo pga realldelen i enegnvärlderna är lika med 0   stabil osilation 
clear 
clc
A=[-2 1;-8 2];T=10;

[V,D]=eig(A); %D = egenvärden (längs diagonalen), V= egenvektorer är kolonerna i V
D(1,1)
D(2,2)





% xaxeln                    yaxeln
u1=linspace(-2,2,30); u2=linspace(-2,2,30);
[U1,U2]=meshgrid(u1,u2);
F1=A(1,1)*U1+A(1,2)*U2; F2=A(2,1)*U1+A(2,2)*U2;
quiver(U1,U2,F1,F2,0.9),hold on



axis([-2 2 -2 2])
hold on

[c1,c2]=ginput(1); % Ny punkt, knapp är den musknapp som trycktes på
% c1=0;%startvärde x
% c2=0.01;%startvärde y
u0=[c1;c2];


F=@(t,u)A*u;
[t,U]=ode45(F,[0 T],u0);
plot(U(:,1),U(:,2),'r','LineWidth',2)




%fasporträt
%till höger om linjen 
step=0.1;
lines=2; %antalet linjer på var sida om orginalinjen 
for cf = c1+step:step:c1+lines*step
    u0=[cf;c2];
    [t,U]=ode45(F,[0 T],u0);
    plot(U(:,1),U(:,2),'g','LineWidth',2)
end

%fasporträt till vänster 
for cf = c1-step:-step:c1-lines*step
     u0=[cf;c2];
     [t,U]=ode45(F,[0 T],u0);
     plot(U(:,1),U(:,2),'g','LineWidth',2)
 end



hold off


