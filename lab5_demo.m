global E i0 a R
a=1; R=1; i0=1;
t=0:0.01:1;
Et = 100*sin(2*pi*3*t); % jaievito savu funkciju
URm=[];

for E = Et
    UR=newmet5;
    URm=[URm,UR] % jaievieto sarkanu pogu
end
%use F5 to continue
plot(t,Et,t,URm)
%% Modificet pec lab3_fun.m
% syms i0 a Ud id
% solve(id==i0*(exp(a*Ud))-1,a)
%   ans =
%       log(id/i0 + 1)/Ud
%
% id = 5e-5;
% Ud = 2;
% i0 = 1e-5;
% log(id/i0+1)/Ud
%
%   ans=
%       0.8958..... - tas bus (a) vertiba