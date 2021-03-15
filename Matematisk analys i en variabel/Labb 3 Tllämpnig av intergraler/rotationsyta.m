
function []=rotationsyta(x,y)
% Rotationsyta - ritar rotationsytan till f(x) över ett intervall.
%   Syntax:
%           []=rotationsyta(x,y)
%   Argument:
%           x   - en vektor med stigande x-värden i intervallet.
%           y   - en vektor med f(x)-värden.
%   Returnerar:
%           -
%   Beskrivning:
%           -
%   Exempel:
%           a=0; b=25; n=30;
%           x=linspace(a,b,n); y=1.5+sin(0.02*x.^2);
%           rotationsyta(x,y)

    r=linspace(0,2*pi,20);
    X=ones(size(r))'*x;
    Y=cos(r)'*y;
    Z=sin(r)'*y;
    surf(X,Y,Z)
    axis equal
