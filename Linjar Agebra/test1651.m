A=[-3 1 2;3 -2 1;3 -4 7]; b=[2;1;7];
l1=@(x1,x2)(b(1)-A(1,1)*x1-A(1,2)*x2)/A(1,3);
l2=@(x1,x2)(b(2)-A(2,1)*x1-A(2,2)*x2)/A(2,3);
l3=@(x1,x2)(b(3)-A(3,1)*x1-A(3,2)*x2)/A(3,3);
x1=linspace(-1,1,30); x2=linspace(-1,1,30);
[X1,X2]=meshgrid(x1,x2);
surf(X1,X2,l1(X1,X2),'facecolor','b'), hold on
surf(X1,X2,l2(X1,X2),'facecolor','g')
surf(X1,X2,l3(X1,X2),'facecolor','c')


%grafens linjer 
xlabel('x_1'), ylabel('x_2'), zlabel('x_3')
axis([-1 1 -1 1 -4 7]), axis vis3d, grid on, box on



%beräkna om det är en det finns unik lösning, oändlig många lösningar eller
%saknar lösning


E=[A b];
R=rref(E);

F=[A b]; %gör en matris av A med sista kollon b 

P=rref(F)
P2=rref(A);

% kollar om det finns oändligt många lösningar eller ifall den saknar
% lösning och isåfall beräknar ut vilken 
M = max(P2,[],2);% Kollar vilket värde i som är störst i varje rad raden dock inte i svaret 
PM = max(P,[],2);% Kollar vilket värde i som är störst i varje rad och gör en column med svaren detta inkludera även svaret 
[o,p]=size(PM); %kollar storleken på komlumnen som PM ger detta för att kunna se vilket värde den understa raden har som max
[m,n]=size(M);%kollar storleken på komlumnen som M ger detta för att kunna se vilket värde den understa raden har som max
if ((M(m))==0) %ifall sant matrisen har oändligt med lösningar eller saknar lösning 
    if ((PM(o))==0) %ifall sant har den oändligt många lösningar
        disp('lösningen är')
        
        
        % kan beräkna alla 3x3 matriser
 
        z3 = i;
        z2 = (P(2,4))-((P(2,3))*(z3));
        z1 =(P(1,4))-((P(1,2))*(z2))-((P(1,3))*(z3));
       
        
        m1 = real(z1);  %tar ut real delen ur talet 
        m2 = real(z2);  %tar ut real delen ur talet 
        m3 = real(z3);  %tar ut real delen ur talet 
        

        t1 = imag(z1); %tar ut imaginerdelen ur talet 
        t2 = imag(z2);%tar ut imaginerdelen ur talet 
        t3 = imag(z3); %tar ut imaginerdelen ur talet 
        

        m=[m1;m2;m3];
        t=[t1;t2;t3];

        % printar ut svaret
        fmt=['[' repmat(' %1.2f',1,numel(m))];
        fprintf(fmt,m)
        fmt=['] + t *[ ' repmat(' %1.2f',1,numel(t))];
        fprintf(fmt,t)
        disp('] = [x1 x2 x3]')
        disp(' Där t är en del av dom rationella talen ')
        
        
        t=linspace(-1,1,30);
        xt = @(t) m1+t1*t;
        yt = @(t) m2+t2*t;
        zt = @(t) t;
        fplot3(xt,yt,zt,'r','linewidth',5)     
    else
     disp('saknar lösning')   
    end
else
   disp('Unik lösning i punkten') 
   fprintf('(%d,%d,%d)\n',P(1,4),P(2,4),P(3,4));
   x= [P(1,4),P(2,4),P(3,4)]
   plot3(x(1),x(2),x(3),'ro','markersize',10,'linewidth',10)
%    plot(P(1,4),P(2,4),P(3,4),'r.')
end


