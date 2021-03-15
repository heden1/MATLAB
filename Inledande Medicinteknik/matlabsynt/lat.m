% den låten som ska spelas

% t = tones uppspelningstid i sekunder
% f = frekvens i Hz
% ts=1; % så länge varje ton spelas upp i sekund
C=261.6;
D=293.7;
E=329.6;
F=349.2;
G=392.;
A=440.;
B=493.9;
CH=261.63;
FH=365.63;
GH=408.79;
AH=466.16;
% F7  FH-AH-CH-E
% AHM  AH-CH--EH-G


m= 0; % minskar /ökar mellanrummet mellna dom olika acorden 
% m>0 ökar mellanrummet m<o minskar mellnarummet 

i=0

t=3;


% doc sound
%%INTRO 
while i<2
    %C     C-E-G
    ljud= synt(t,C);
    ljud= synt(t,E);
    ljud= synt(t,G);
    pause(t+m)

    %  Am9   A - C - E - G - B   
    ljud= synt(t,A);
    ljud= synt(t,C);
    ljud= synt(t,E);
    ljud= synt(t,G);
    ljud= synt(t,B);
    pause(t+m)
    i=i+1
end

%% VERSE 1

%CH
ljud= synt(t,CH);
pause(t)

%AHM
ljud= synt(t,E);
pause(t)