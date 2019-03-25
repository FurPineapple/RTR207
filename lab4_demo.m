%% Daudzkonturu shemas simulacija
%% 4.lab. darbs
R1=1;R2=2;R3=3;R4=4;R5=5;R6=6;R7=7;
E1=1;E2=2;E3=3;

R=[R1+R2+R3  -R2  0;
    -R2  R2+R4+R5  -R5;
    0  -R5  R6+R7+R5];

E=[E1;-E2;-E3];

% Risinasim doto vienadojuma sistemu
Ik=R\E
% Esam atradusi kontrstravas
% ir jaatrod IR5-?; UR5-? PR5-?
% Strava
IR5=Ik(3)-Ik(2)
% Spriegums
UR5=IR5*R5
% Jauda
PR5=IR5*UR5
%% sarezgisim uzdevumu
% Tagad katram avotam bus tris spriegumi
E1=[1 -1 0];
E2=[2 -2 0];
E3=[3 -3 0];
% japardefine E matrica
E=[E1; -E2; - E3];
% risinasim 3 vienadojumu sistemu

Ik=R\E

% atradisim IR6-? UR6-? PR6-?
% Strava
IR6=Ik(3,:);% visa 3-sa rinda
% Spriegums
UR6=IR6*R6
% Jauda
PR6=UR6.*IR6
%% Laika mainigie signali
t=0:0.01:1;
E1t=sin(2*pi*5*t);
E2t=cos(2*pi*7*t);
E3t=rand(size(t));
% pardefinesim E matricu
E=[E1t;-E2t;-E3t];
% risinasim
Ik=R\E;
% atradisim un uzzimesim
% IR2(t),UR2(t),PR2(t)-?
% Strava
IR2=Ik(1,:)-Ik(2,:);
UR2=IR2.*R2;
PR2=UR2.*IR2;
plot(t,UR2,t,PR2);
legend('U_{R_2}','P_{R_2}')
%% cits veids ka zimet sada veida grafikus
figure
yyaxis left
plot(t,UR2);
ylabel('U_{R2}(t)')
yyaxis right
plot(t,PR2);
ylabel('P_{R2}(t)')
xlabel('laiks, t,s')
%% Rezultatu parbaude
% UR1+UR2+UR3-E1==0
UR1=Ik(1,:).*R1;
UR3=Ik(1,:).*R3;
Utst=UR1+UR2+UR3-E1t;
figure
plot(t,Utst)