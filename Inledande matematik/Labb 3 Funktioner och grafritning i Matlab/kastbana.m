
function y=kastbana(x,vinkel)
t=vinkel*pi/180; % vinkel i grader, t i radianer
v0=10; y0=1.85; g=9.82; % v0 = utkastshastighet 
a=g/(2*v0^2*cos(t)^2);
b=v0^2*sin(2*t)/(2*g);
c=v0^2*sin(t)^2/(2*g);
y=y0-a*(x-b).^2+c;

end

% vi delar upp funktionen i delar för att det ska bli lättar att hålla reda
% på vad som står för annars hade det bra blivit ett jättelångt frunktion
% som är svår att rätta ifall det blir något fel