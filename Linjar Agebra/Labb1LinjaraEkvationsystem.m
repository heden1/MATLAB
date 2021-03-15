%%Linjära ekvationsystem labb1 Anton Hedén
clc
disp('Linjära ekvationsystem  Anton Hedén')
disp('--------------------')

%% Uppgift 1
disp('Uppgift 1a')
figure(1)
Aa=[1 3;5 -2]; ba=[6;13]; %matrisen
l1=@(x1)(ba(1)-Aa(1,1)*x1)/Aa(1,2);
l2=@(x1)(ba(2)-Aa(2,1)*x1)/Aa(2,2);
x1=linspace(0,4,2);
plot(x1,l1(x1),'b','linewidth',2), hold on
plot(x1,l2(x1),'g','linewidth',2)
xlabel('x_1'), ylabel('x_2')
axis equal, axis([2 4 0 2])
hold on


%beräknar lösning
% Aa=[1 3;5 4]; ba=[6;13];
R=rref([Aa ba]);
[o,p]=size(R); %kollar storleken på komlumnen som PM ger detta för att kunna se vilket värde den understa raden har som max
fprintf('x = %d \n',R(1,p));
fprintf('y = %d \n',R(2,p));
%plotar lösning i en punkt 
plot(R(1,p),R(2,p),"r.",'MarkerSize',20)
hold on

%plottar lösningen
x=[R(1,p);R(2,p)];
% plot(x(1),x(2),'ro','markersize',3,'linewidth',4), hold off
disp(' ')








disp('Uppgift 1 b1)')

figure(2)
Ab=[1 3;2 6]; bb=[5;12]; %matrisen
l1=@(x1)(bb(1)-Ab(1,1)*x1)/Ab(1,2);
l2=@(x1)(bb(2)-Ab(2,1)*x1)/Ab(2,2);
x1=linspace(0,4,2);
plot(x1,l1(x1),'b','linewidth',2), hold on
plot(x1,l2(x1),'g','linewidth',2)
xlabel('x_1'), ylabel('x_2')
axis equal, axis([2 4 0 2])
hold on


%beräknar lösning
disp('Saknar lösning parrarella')





%plottar lösningen
% x=[Rb(1,p);Rb(2,p)];
% % plot(x(1),x(2),'ro','markersize',3,'linewidth',4), hold off
disp(' ')



disp('Uppgift 1 b2)')
figure(3)
Ac=[1 3;2 6]; bc=[5;10]; %matrisen
l1=@(x1)(bc(1)-Ac(1,1)*x1)/Ac(1,2);
l2=@(x1)(bc(2)-Ac(2,1)*x1)/Ac(2,2);
x1=linspace(0,4,2);
plot(x1,l1(x1),'b','linewidth',2), hold on
plot(x1,l2(x1),'r','linewidth',2)
xlabel('x_1'), ylabel('x_2')
axis equal, axis([2 4 0 2])
hold on


%beräknar lösning
disp('samma linje oändligt många lösningar')


disp('--------------------')



%% uppgift 2 a)
disp('Uppgift 2 a)')
figure(4)
A=[-3 1 2;3 -2 1;-1 5 1]; b=[2;1;1];
%beräkna om det är en det finns unik lösning, oändlig många lösningar eller
%saknar lösning
Labb1Losning(A,b);
disp(' ')
%% uppgift 2 b1)
disp('Uppgift 2 b1)')
A=[-3 1 2;3 -2 1;3 -4 7]; b=[2;1;1];
figure(5)
Labb1Losning(A,b);
disp(' ')
%% uppgift 2 b2)
disp('Uppgift 2 b2)')
A=[-3 1 2;3 -2 1;3 -4 7]; b=[2;1;7];
figure(6)
Labb1Losning(A,b);
disp(' ')


disp('--------------------')
