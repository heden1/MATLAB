
function q=min_integral(f,I,n,k)
% min_integral - beräknar integralen av f(x) på intervallet I.
%
%   Syntax:
%           q =  min_integral(f,I,n,k)
%   Argument:
%           f   - funktionshandtag: pekar på namnet till en funktionsfil eller
%                 till en anonym funktion. T.ex. f=@funk eller f = @(x)sin(x.^2)
%           I   - 1x2 matris, anger ett intervall I=[a b]
%           n   - positivt heltal, steglängden ges av: h=(b-a)/n där n är antalet delintervall.
%           k   - kvadraturmetod
%   Returnerar:
%           q - ett tal
%   Beskrivning:
%           Programmet beräknar ett approximativt värde på integralen
%           av f(x) över intervallet I med antingen rektangelmetoden vänster (k=1),
%           rektangelmetoden höger (k=2), mittpunktsmetoden (k=3) eller 
%           trapetsmetoden (k=4).
%   Exempel:
%           q=min_integral(@cos,[0, pi/2],100,2)

    a=I(1);
    b=I(2);
    h=(b-a)/n;
    % x värde för vänsterregtantgel 
x1=linspace(a,b-h,n);
% x värde för högerregtantgel 
x2=linspace(a+h,b,n);

if k==1;
    % undersumma vänster rektangelregler
    q=sum(h*f(x1));
    
elseif k==2;
    % översumma höger rektangelregler;
    q=sum(h*f(x2));
    
elseif k==3;
   % mittpunktsmetoden
    q=sum(h*(f((x2+x1)/2)));  

elseif k==4;
    % trapetsmetoden
    q=sum((h/2)*(f(x1)+f(x2)));
else
    disp(' fel k')
    
end
