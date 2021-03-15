%% Matriser och Vektorer Anton Hedén
clc
disp('Matriser och Vektorer Anton Hedén')
disp('--------------------')
%% Uppgift 1
disp('Uppgift 1')
A=[1 4 7 10; 2 5 8 11; 3 6 9 12];
b=[1; 3; 5];
c=[0 2 4 6 8];

A(2,3);
b(2);
c(3);

fprintf(' A(2,3) = %d \n',A(2,3));
fprintf(' b(2) = %d \n',b(2));
fprintf(' c(3) = %d \n',c(3));

A(2,3)=15; %ändra till 15
A
disp('--------------------')
%% Uppgift 2
disp('Uppgift 2')


A=[1 5 9;2 0 5;3 7 11];
a=[29;26;39];
B=[1 1 3 4;-2 2 2 0;1 1 2 3;1 -1 -2 -1];
b=[2;-4;1;1];


E=[A a];
R=rref(E);

F=[B b]; %gör en matris av B med sista kollon b 

P=rref(F)
P2=rref(B);

% kollar om det finns oändligt många lösningar eller ifall den saknar
% lösning och isåfall beräknar ut vilken 
M = max(P2,[],2);% Kollar vilket värde i som är störst i varje rad raden dock inte i svaret 
PM = max(P,[],2);% Kollar vilket värde i som är störst i varje rad och gör en column med svaren detta inkludera även svaret 
[o,p]=size(PM); %kollar storleken på komlumnen som PM ger detta för att kunna se vilket värde den understa raden har som max
[m,n]=size(M);%kollar storleken på komlumnen som M ger detta för att kunna se vilket värde den understa raden har som max
if ((M(m))==0) %ifall sant matrisen har oändligt med lösningar eller saknar lösning 
    if ((PM(o))==0) %ifall sant har den oändligt många lösningar
        disp('lösningen är')
        
        
        % kan beräkna alla 4x4 matriser
 
        z4 = i;
        z3 = (P(3,5))-(P(3,4))*(z4);
        z2 =(P(2,5))-(P(2,3))*(z3)-(P(2,4))*(z4);
        z1 =(P(1,5))-(P(1,2))*(z2)-(P(1,3))*(z3)-(P(1,4))*(z4);
       
        
        m1 = real(z1);  %tar ut real delen ur talet 
        m2 = real(z2);  %tar ut real delen ur talet 
        m3 = real(z3);  %tar ut real delen ur talet 
        m4 = real(z4);  %tar ut real delen ur talet 
        
        t1 = imag(z1); %tar ut imaginerdelen ur talet 
        t2 = imag(z2); %tar ut imaginerdelen ur talet 
        t3 = imag(z3);%tar ut imaginerdelen ur talet 
        t4 = imag(z4); %tar ut imaginerdelen ur talet 
        

        m=[m1;m2;m3;m4];
        t=[t1;t2;t3;t4];

        % printar ut svaret
        fmt=['[' repmat(' %1.0f',1,numel(m))];
        fprintf(fmt,m)
        fmt=['] + t *[ ' repmat(' %1.0f',1,numel(t))];
        fprintf(fmt,t)
        disp('] = [x1 x2 x3 x4]')
        disp(' Där t är en del av dom rationella talen ')
        
    
    else
     disp('saknar lösning')   
    end
    
end
disp('--------------------')
%% uppgift 3
disp('Uppgift 3')
A=[11 4 3 7;2 6 8 5;9 12 1 10];
b=[3;1;5];
c=[4 2 8 0 6];
[bm,bn]=size(b);
[cm,cn]=size(c);


disp(' ')

%kollar vart i A matrisen det största och minsta värdet finns 
ko=[1 2 3 4];
V=max(A);
[Am,An]=max(A);
[big,colum1]=max(Am);
row=An(1,colum1);

V=min(A);
[Amm,Anm]=min(A);
[small,columm]=min(Amm);
rowm=Anm(1,columm);

fprintf('Största värdet i A är %d och den ligger i rad %d och den %d kolumnen.\n',big,row,colum1);
fprintf('Minsta värdet i A är %d och den ligger i rad %d och den %d kolumnen.\n',small,rowm,columm);

% fprintf('Största värdet i %d\n raden är  %d och finns i %d  kolumnen.\n',ko,Am,An);

disp(' ')
disp('--------------------')
%% uppgift 4
disp('Uppgift 4')

t=(1:5);
s = sum(t.^2);
fprintf('Summan är %d  \n',s);


% Anton Hedén
