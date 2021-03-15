%% Mer om linjär ekvationssytem  Anton Hedén
clc
disp('Mer om linjär ekvationssytem  Anton Hedén')
disp('--------------------')

%% Uppgift 1
disp('Uppgift 1')
disp(' ')
A=[1 4 7 10;2 5 8 11;3 6 9 12];
B=[4 5 6;3 2 1;1 1 1];
c=[1;3;5];
d=[0 2 4];

%a)
disp('a)')
A(:,3)=c
B(2,:)=d
% b)
disp('b)')
% A=[1 4 7 10;2 5 8 11;3 6 9 12]; ska den återgå till sitt startvärde eller
% behålla det från tidigare?
% byter plats på första och tredje raden 
e=A(1,:);
f=A(3,:);
A(3,:)=e;
A(1,:)=f

%byter plats på 2 och 4 kolonen
g=A(:,2);
h=A(:,4);
A(:,4)=g;
A(:,2)=h

disp('--------------------')
%% Uppgift 2
disp('Uppgift 2')
disp(' ')
% konstanter
clear B
b1=[4;3;1];
b2=[5;2;1];
b3=[6;1;1];

B=[b1 b2 b3]

disp('--------------------')
%% Uppgift 3
disp('Uppgift 3')
disp(' ')
A=[10 7 8 7;7 5 6 5;8 6 10 9;7 5 9 10]
A11=A(1:2,1:2)
A12=A(1:2,3:4)
A21=A(3:4,1:2)
A22=A(3:4,3:4)
clear A
disp('bygger upp A igen')
A(1:2,1:2)=A11
A(1:2,3:4)=A12
A(3:4,1:2)=A21
A(3:4,3:4)=A22


disp('--------------------')
%% Uppgift 4
disp('Uppgift 4')
disp(' ')
A=[1 5 9;2 6 10;3 7 11;4 8 12];
B=[4 5 6;3 2 1;1 1 1];
x=[1;1;1];
a=[-1 0 1];

A*x
C=Labb2MatrisMultiplikation(A,x)

B*x
% C=Labb2MatrisMultiplikation(B,x)

A*B
% C=Labb2MatrisMultiplikation(A,B)

a*x
% C=Labb2MatrisMultiplikation(a,x)

x*a
% C=Labb2MatrisMultiplikation(x,a)

a*B
%C=Labb2MatrisMultiplikation(a,B)



disp('--------------------')
%% Uppgift 5
%A)
disp('Uppgift 5')
disp(' ')
A=[1 0 0;0 1 0;1 0 1];
B=[1 0 0;-2 1 0;0 0 1];
C=[2 1 1;4 1 0;-2 2 1];

if A*(B*C)== (A*B)*C
    disp('true')
else
    disp('false')
end 


if A*(B+C)== (A*B)+(A*C)
    disp('true')
else
    disp('false')
end 

if (B+C)*A== (B*A)+(C*A)
    disp('true')
else
    disp('false')
end 


%B)
disp(' ')
disp('B)')
if A*B== B*A
    disp('true')
else
    disp('false')
end 
A*B
%Varför? jo för att hur sätter du 


disp('--------------------')
%% Uppgift 6
disp('Uppgift 6')
% fel stämmer inte
disp(' ')
n=9; ett=ones(n,1);
A=spdiags([-ett -ett 4*ett -ett -ett],[-3 -1 0 1 3],n,n);
FA=full(A)
b=[100;20;120;80;0;100;120;40;140]

A\b

