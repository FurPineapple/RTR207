Um=[-1 0.3 1.5 2.5 3.2];
Im=[1.1 2.2 2.1 3.2 4.7];
plot(Um,Im)
plot(Um,Im,'o-')
% i jaatrod "parabolas"
%(2. kartas polinomu) izteiksme
% to veiks matlaba funkcija
% polyfit
%sintakse:
% C= polyfit(x,y,N) N-polinoma karta
C=polyfit(Um,Im,10)

%C =
%
%    0.1716    0.3662    1.5034

U=-1:0.01:3.2;
%I=C(1)*U.^2+C(2)+C(3);
%plot(Um,Im,'o',U,I)

%I=C(1)*U.^3+C(2)*U.^2+C(3)+C(4);
I=polyval(C,U);
plot(Um,Im,'o',U,I)