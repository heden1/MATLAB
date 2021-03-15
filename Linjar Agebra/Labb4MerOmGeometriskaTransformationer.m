%% Mer om geometriska transformationer  Anton Hedén
clc
disp('Mer om geometriska transformationer Anton Hedén')
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



xmin=-2; xmax=2; ymin=-2; ymax=2;
a=1; b=-1; c=4; d=1;
X=[xmin xmax xmax xmin]; Y=[ymin ymin ymax ymax];
Z=(d-a*X-b*Y)/c;
figure(1)
fill3(X,Y,Z,'g','facealpha',0.7)
xlabel('x'), ylabel('y'),zlabel('z')
axis equal, grid on,hold on

% Hitta en punkt i planet
x=0;
y=0;
z=d/c;
s=0.25;
quiver3(x,y,z,a,b,c,s,'LineWidth',2);%quiver3(x,y,z,a,b,c,s) x,y,z=punkt i planet a,b,c= punkt som pilen ska rittas mot. s=skalning av pilen Normalt =0

text(a*s+x,b*s+y,c*s+z,'$\bar{\mathbf{n}}$','interpreter','latex','fontsize',12);
hold off


disp('--------------------')
%% Uppgift 2
disp('Uppgift 2')
disp(' ')
% figure(2)
xmin=-2; xmax=2; ymin=-2; ymax=2;
a=1; b=-1; c=4; d=1;

n=[a;b;c];
X=[xmin xmax xmax xmin]; Y=[ymin ymin ymax ymax];
Z=(d-a*X-b*Y)/c;


ax=[-5 5 -5 5 -5 5];
fill3(X,Y,Z,'g','facealpha',0.7)
xlabel('x'), ylabel('y'),zlabel('z')
axis equal, grid on,hold on%,axis(ax)

% Hitta en punkt i planet
x=0;
y=0;
z=d/c;
s=1/norm(n); %ritar med längden 1
%för att rita normalvektorn 
quiver3(x,y,z,a,b,c,s)%quiver3(x,y,z,a,b,c,s) x,y,z=punkt i planet a,b,c= punkt som pilen ska rittas mot. s=skalning av pilen Normalt =0

%printar n i grafen
text(a*s+x,b*s+y,c*s+z,'$\bar{\mathbf{n}}$','interpreter','latex','fontsize',12)


%teatreden
H= [(2*sqrt(2))/3 -sqrt(2)/3 -sqrt(2)/3 0
   0 sqrt(2/3) -sqrt(2/3) 0
   -1/3 -1/3 -1/3 1];

T=[1;0;1];
%transilation
H=H+T;

S=[1 2 3 % S(i,:), i:te raden i S, ger nr på hörnpunkter på sida i
1 2 4
1 4 3
2 3 4]; % size(S,1) ger antal sidor







hold on
for i=1:size(S,1)
Si=S(i,:); fill3(H(1,Si),H(2,Si),H(3,Si),'r','facealpha',0.7)
end
ax=[-1.5 3.5 -2.5 2.5 -2.5 2.5]; % Gr¨anser f¨or koordinataxlarna, ax=[xmin xmax ymin ymax zmin zmax].
axis equal, hold on%,axis(ax), view(70,10)%,pause(2)


[M,N]=size(H);%storlek
H2=zeros(M,N); % gör en tom matris 
for j =1:N %vilken kolumn
    H2(:,j)=H(:,j)+(-2*(n/norm(n)))*((a*H(1,j)+b*H(2,j)+c*H(3,j)-d)/norm(n));%*(a*(H(1,j))+b*(H(2,j))+c*(H(3,j))-d)*-2/norm(n))%%[a;b;c]%
        
%          H2(:,j)=punkt i ett hörn i trateden +(normalvektorn/des längd) *"avstånd mellan punkten och planet" *-2

end

%prints H2
for i=1:size(S,1)
Si=S(i,:); fill3(H2(1,Si),H2(2,Si),H2(3,Si),'r','facealpha',0.7)
end

hold off

disp('--------------------')
%% Uppgift 3
disp('Uppgift 3')
disp(' ')

% figure(3)
phi=pi/15;
A=[1 0 0; 0 cos(phi) -sin(phi); 0 sin(phi) cos(phi)];
v=[3;2;0.5]; v=v/norm(v); Z=null(v'); P=[v,Z];
if det(P)<0, P(:,[2 3])=P(:,[3 2]); end
Av=P*A*P';
x=[1; -1; 0.5];
% x=[0.8; 0.1; 1.2];
plot3(x(1),x(2),x(3),'o'), hold on
for i=1:30
    x=Av*x;
    plot3(x(1),x(2),x(3),'o')
end
plot3([-v(1) v(1)],[-v(2) v(2)],[-v(3) v(3)],'r','linewidth',3)
box on, grid on
axis equal, axis([-2 2 -2 2 -2 2]), axis vis3d
hold off
disp('--------------------')
%% Uppgift 4
disp('Uppgift 4')
disp(' ')

disp('--------------------')
%% Uppgift 5
disp('Uppgift 5')
disp(' ')

disp('--------------------')