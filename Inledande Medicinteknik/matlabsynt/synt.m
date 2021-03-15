%synt 

% t = tones uppspelningstid i sekunder
% f = frekvens i Hz
% ts=1; % så länge varje ton spelas upp i sekund
        
function y = A(ts,f)
%     f=440;
    Fs=32000;
    t = linspace(0,ts,Fs);
    y = sin(2.*pi.*f.*t);
    sound(y,Fs);
end