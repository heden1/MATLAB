function [C] = Labb2MatrisMultiplikation(ma1,ma2)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
    [m1,n1]=size(ma1);%storlek 
    [m2,n2]=size(ma2);

    if n1==m2
        C=zeros(m1,n2);
        for i = 1:n2 %i = vilken kolmn vi är på i C
            for j = 1:m1 % j= vilken rad vi är på C
                for k = 1:n1 %=Vilken två tal i som ska multipliceras fråm kolon i ma1 med samma index på rad i ma2  
                    C(j,i)= C(j,i)+ ma1(j,k)*ma2(k,i);
                end
            end
        end

    else
        disp("fel antal rader kolumner kan inte multipliceras")
        fprintf('(%d inte lika med %d)\n',n1,m2);

    end
end

