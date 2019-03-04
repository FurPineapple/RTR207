%% Lab3_demo_fun
function y=lab3_demo_fun(t)
if nargin ==0
    t=0:0.01:8;
end
%t=0:0.01:8;

%t_zero=0:0.1:1;
t_zerof=(t>=0)&(t<1);
t_zero=t(t_zerof);
%t_sin=1:0.01:2.5;
t_sinf=(t>=1)&(t<2.5);
t_sin=t(t_sinf);
%t_noise=2.5:0.01:4.5;
t_noisef=(t>=2.5)&(t<4.5);
t_noise=t(t_noisef);
%t_const=4.5:0.01:6.5;
t_constf=(t>=4.5)&(t<6.5);
t_const=t(t_constf);
%t_saw=6.5:0.01:8;
t_sawf=(t>=6.5)&(t<=8);
t_saw=t(t_sawf);

%% sinusoida
%t_sin=1:0.01:2.5;

A0=0;% pacelsana f-cijas!
A=2.5;% amplituda!
T=(2.5-1)/3.5;% periods!(
% (A-(uzsaksanas punkts delay))/svarstibu skaits)
f=1/T;% frekvence!
delay=1;
y_sin=A0+A*sin(2*pi*f*(t_sin-delay));
%plot(t_sin,y_sin)
% try command(axis([0 8 -2.5 2.5]))
% to change resolution
% axis([0 8 -2.5 2.5])
%% Lineari mainigs signals
%t_saw=6.5:0.01:8;

%k=(yA-yB)/(tA-tB) k-slipuma koeficients
k=(2.5-(-2.5))/(6.5-8);
delay=7.25;

y_saw=k*(t_saw-delay);
%plot(t_saw,y_saw)
%% Konstante
%t_const=4.5:0.01:6.5;

%y_const=2.5 2.5 2.5 2.5 2.5... 

y_const=2.5*ones(size(t_const));
plot(t_const,y_const)

%% nulles signals

%t_zero=0:0.1:1;
y_zero=0*ones(size(t_zero));
%plot(t_zero,y_zero)

%% Troksna signals

%t_noise=2.5:0.01:4.5;
y_noise=3*rand(size(t_noise))-1,5;
%plot(t_noise,y_noise)

%% Vektoru apvienosana
%t=[t_zero,t_sin,t_noise,t_const,t_saw];
y=[y_zero,y_sin,y_noise,y_const,y_saw];

if nargout==0%(izejas argumentu skaits)
    plot(t,y)
    y=[];
end