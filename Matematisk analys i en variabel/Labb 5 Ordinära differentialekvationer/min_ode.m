function [t,U]=min_ode(f,I,ua,h);
% min_ode - löser begynnelsevärdesproblemet för första ordningens differential-
%           ekvationen u'=f(t,u), u(a)=ua.
%
%   Syntax:
%           [t,U]=min_ode(f,I,ua,h)
%   Argument:
%           f   - funktionshandtag: pekar på namnet till en funktionsfil eller
%                 till en anonym funktion, t.ex. f=@funk
%           I   - 1x2 matris, anger ett intervall I=[a b]
%           ua  - ett tal, anger begynnelsevärdet
%           h   - positivt tal, anger steglängden
%   Returnerar:
%           t -  en kolonnvektor, beräkningsnoderna t(i)
%           U -  en kolonnvektor, U(i) är approximationen i
%                tidpunkten t(i)
%   Beskrivning:
%           Programmet beräknar en approximativ lösning av begynnelsevärdes-
%           problemet  u'=f(t,u), a<t<b; u(a)=ua, med Eulers metod.
%           Programmet använder konstant steglängd h.
%   Exampel:
%           [t,U]=min_ode(@fun, [0, 20], 10, 1e-3)         

 


    N=(I(2)-I(1))/h;%antal steg   h= steglängd 
    t=I(1)+(0:N)*h; %a+nh vektor n från 0 till N
    U=zeros(size(t));% N styck nollor
    U(1)=ua; % U(1)=ua; tar första sifran ut ur U och sätter den lika med ua 

    for n=1:N %kör N gånger
        U(n+1)=U(n)+h.*f(t(n),U(n));% beräknar vatje tal i vketorn genom eulers metod 
    end

end

