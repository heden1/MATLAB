%% Kontrollstrukturer ANTON HEDÉN
clc
disp('Kontrollstrukturer ANTON HEDÉN')
disp('--------------------')

%% Uppgift 1
disp('Uppgift 1')
% Triangel
x=[0 3 6 0]; % kordinater för triangelns hörn
y=[0 3 0 0];
l=polylen(x,y);
fprintf('Omketsen på triangeln är %f längdenheter. \n',l);

% rektangel
x=[0 0 6 6 0];  % kordinater för rektangelns hörn
y=[0 3 3 0 0];
l=polylen(x,y);
fprintf('Omketsen på rektangeln är %f längdenheter. \n',l);


disp('--------------------')
%% Uppgift 2
disp('Uppgift 2')


% a)
disp('  Uppgift 2 a)')
d=5;    % anatal decimaler som pi ska avrundas till
sn=0;   %definerar sn
n=0;    %definerar n
snr=0;    %definerar snr


p=(floor(pi*10^d))/(10^d);  % tar floor för att  t.ex 3,1415 utryckt i 3 decimaler ska bli blir 3,141   för hade man avrundat hade det blivit 3,142   vilket gör att den sissta decimalen är fel 
while p~=snr  % kollar om snr är = pi med d st decimaler 
    sn=sn+(((-1)^n)/(2*n+1))*4; %multiplicerar med fyra för att få bort 4an i pi/4
    n=n+1; 
    snr=floor(sn*10^d)/10^d; %kollar vilket värde resultatet men d st decimaler 
end % slutet på while-satsen

% skriver ut resultatet
fprintf('    Pi aproximeras till %d decimaler genom att addera %d termer \n',d,n);
fprintf('    och aproximeras då till %.15f . \n',sn);

% b)
disp('  ')
disp('  Uppgift 2 b)')
s=0;
n=0;
for i=1:1000
    s=s+(((-1)^n)/(2*n+1));
    n=n+1;
end
fprintf('    Pi/4 aproximeras till %.15f vid 1000 adderade termer \n',s);
disp('--------------------')
%% Uppgift 3
disp('Uppgift 3')

clf
subplot(1,2,1)
text(1, 9, ['Högerklicka när du ', char(10), 'är klar med figuren']) % Förklarar vad som ska göras när man ritar in grafen
axis([0 10 0 10]), hold on % Skapar ritområde
[x,y]=ginput(1); % Första punkten läses in ...
plot(x,y,'o')% ... och ritas ut
while 1 % För evigt,1 står ju för sant 
    [xi,yi,knapp]=ginput(1); % Ny punkt, knapp är den musknapp som trycktes på
    if knapp~=1 % Om knapp inte vänster musknapp ...
        break % ... så avbryts whilesatsen
    end
    x=[x; xi]; y=[y; yi]; % Nya punktens koordinater till tidigare
    plot(x(end-1:end),y(end-1:end),'o-')
end % Rita från näst sista punkten till den sista
hold off
x=[x; x(1)]; y=[y; y(1)]; % Vi sluter polygontåget, så alla sidor ritas
subplot(1,2,2)
fill(x,y,'y')
axis([0 10 0 10])


l=polylen(x,y);
fprintf('Omketsen på din figur är %f längdenheter. \n',l);
text(2, 7, sprintf('Omkrets = %f',l)) % skriver ut omkretsen i grafen
disp('--------------------')
%% Anton Hedén