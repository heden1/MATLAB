
function m=min_bisect(f,I,tol)
% min_bisect - beräknar nollställe till f(x) på intervallet I.
%   Syntax:
%           x = min_bisect(f,I,tol)
%   Argument:
%           f   - funktionshandtag: pekar på namnet till en funktionsfil eller
%                 till en anonym funktion. T.ex. f=@funk eller f=@(x)cos(x)-x
%           I   - 1x2 matris, anger ett intervall I=[a,b]. Funktionen måste 
%                 växla tecken på intervallet.
%           tol - positivt tal som anger önskad noggrannhet för nollstället.
%   Returnerar:
%           x   - ett tal som ger approximativt nollställe.
%   Beskrivning:
%           Programmet beräknar ett approximativt nollställe till f(x) på
%           intervallet I med intervallhalveringsmetoden.
%   Exempel:
%           x = min_bisect(@(x)cos(x)-x,[0,1],1e-5)
	   
    a=I(1);
    b=I(2);

    msg=sprintf('??? Felaktig användning ==> min_bisect \n Funktionen måste växla tecken på intervallet. \n Testa ett nytt intervall');
	     
    if f(a).*f(b)>0
        disp(msg)
        m=[];
        return  
    end
    % här börjar det 
       while b-a > tol
            m=(a+b)/2;
            if f(a).*f(m)<0
                b=m;
            else 
                a=m;
            end
        end  
