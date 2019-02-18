% ielasīsim bildes matlabā
A = imread('bilde1.png');
B=imread('bilde2.png');
%figure(1),image(A)
figure(2),image([540 650],[1 0],B)
set(gca,'YDir','normal')
x =[
  572.7654
  592.1606
  606.7070
  610.8632
  617.0974
  627.4877
  633.7218
  639.9560
  646.1902
  649.6537];
y =[
  0.0570
  0.1949
  0.4032
  0.5000
  0.6731
  0.9547
  0.9899
  0.9576
  0.8315
  0.7141];
% pienemsim kā x un y ir musu mērījumu dati
% uzdevums
% pielaikojiet 2,3,4? kartas polinomu siem datiem
% un arī i\uzzimejiet to polinomu
% jaizmanto polyfit,polyval funkcijas
% jauzzime grafiks
% janoforme atskaite

plot(x,y)
plot(x,y,'o-')
C=polyfit(x,y,4)
x2=572:5:655;
y2=polyval(C,x2);
plot(x,y,'o',x2,y2)
xlabel("x")
ylabel("y")
title("LB1_2")
grid
legend("[x,y]-pieregistretie","4 kartas polinoms")
ylim([-2 2])
%% Mērījumu datu apstrāde
    
%% Darba mērķi
% * Iepazīties ar mērījumu apstrādes pamatiem
% * Iemācīties pielietot apgūtās zināšanas
% priekšmetos, kur ir nepieciešama mērījumu
% datu apstrāde (fizika, ETP)
% * Iemācīties veidot atskaites ar Matlab
% palīdzību
%% ievadīsim eksperimentālus datus:

% x =[
%  572.7654
%  592.1606
%  606.7070
%  610.8632
%  617.0974
%  627.4877
%  633.7218
%  639.9560
%  646.1902
%  649.6537];

% y = [0.0570
%  0.1949
%  0.4032
%  0.5000
%  0.6731
%  0.9547
%  0.9899
%  0.9576
%  0.8315
%  0.7141];

% pamēģināsim uzzīmēt grafiku
% plot(x,y,'o-')% neder jo ir lauztā
% līnija
% meģināsim atrast matematisku sakarību
% kas sasaista tos punktus
% sakarību meklesim polinomiālā veidā
% sāksim ar 2.kārtas polinomu
% y = C1*x^2+C2*x+C3
% funkcija kas atdod polinoma koeficientus
% saucas polyfit (polynomial fitting)
% sintakse:
% C = polyfit(x,y,N), N - polinoma kārta
% C - polinoma koeficienti ko atdarīs polyfit
% C=polyfit(x,y,4);
% esam atraduši koeficientus
% lai uzzīmētu panemsim x ar mazāku soli
% x2=572:5:655;
% jārēķina polinoms
% I = C(1)*U.^2+C(2)*U+C(3);
% to var automatizēt ar funkciju polyval
% y2=polyval(C,x2);
% uzzīmēsim
% plot(x,y,'o',x2,y2)
%% Secinājumi:
% Darbas gaitā iemācījos importēt
% grafikus no bildes ar MatLab palīdzību
% un salasīt informāciju no bildes.
% Iemācījos strādāt ar mērījumu
% apstrādes funkcijam(ylim,polyfit,
% polyval u.c.), kuri palīdz
% nodarboties ar grafikiem.
% Uzlāboju savu sapratni par grafiku
% vizualo noformējumu un formulu
% izmantosanu programma.