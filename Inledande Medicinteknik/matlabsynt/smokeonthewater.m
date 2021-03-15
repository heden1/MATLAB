%smoke on the water
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


m= 0.5; % minskar /ökar mellanrummet mellna dom olika acorden 
% m>0 ökar mellanrummet m<o minskar mellnarummet 

i=0

tt=0.5;

% https://www.musikipedia.se/tonfrekvenser
g1=391.995;
ah1=466.194;
c2=523.251;
ch2=554.365;
% frekvnser från oliak tangeter på ett piano

%gör så att tonerna spelas på den mer till vänster på pianot  den mörkare
%sidan
% g1=g1/2;
% ah1=ah1/2;
% c2=c2/2;
% ch2=ch2/2;

 
while i<1
   
    ljud= synt(tt,g1);
    pause(tt+m)
    
    ljud= synt(tt,ah1);
    pause(tt+m)
    
    ljud= synt(tt,c2);
    pause(tt+m)
    % börjar om 
    ljud= synt(tt,g1);
    pause(tt+m)
    
    ljud= synt(tt,ah1);
    pause(tt+m)

    ljud= synt(tt,ch2);
    pause(tt/+m)
    
    ljud= synt(tt,c2);
    pause(tt+m)
    
   % samma som första
    ljud= synt(tt,g1);
    pause(tt+m)
    
    ljud= synt(tt,ah1);
    pause(tt+m)
    
    ljud= synt(tt,c2);
    pause(tt+m)
    
   %tillbaka
    ljud= synt(tt,ah1);
    pause(tt+m)
    
    ljud= synt(tt,g1);
    pause(tt+m)
    pause(tt+m)
    
   
  
    i=i+1
end


