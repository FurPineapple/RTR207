%% sinusoida
t_sin = 4.5:0.01:5.5;
A0 = 0; A = 4.5; T = (1.5-1)/2.5; f = 1/T; delay = 1;
y_sin = A0 + A*sin(2*pi*f*(t_sin - delay));
%plot(t_sin, y_sin)

%% lineari mainigs signals
t_saw = 1.5:0.01:3;
%yA = 2.5; yB = -2.5; tA = 6.5; tB = 8;
%k = (yA-yB)/(tA-tB);
k = (0-(-0.75))/(3-1.5);
delay = 1.5;
y_saw = k*(t_saw - delay);
%plot(t_saw, y_saw)
%% konstante
t_const = 0:0.01:0.5;
y_const = -3*ones(size(t_const));
%plot(t_const,y_const);

%% nulles signals
t_zero = 0.5:0.01:1.5;
y_zero = 0*ones(size(t_zero));
%plot(t_zero, y_zero);

%% troksna signals / baltais troksnis
t_noise = 3:0.01:4.5;
y_noise =3*rand(size(t_noise))-1.5;
%plot(t_noise, y_noise);

%% vektoru apvienosana
t = [t_const,t_zero,t_saw,t_noise,t_sin];
y = [y_const,y_zero,y_saw,y_noise,y_sin];
plot(t,y,'b')
grid on
grid minor
%% secinajums:
% Es iemacijos konstruet dazada veida grafikus,
% savienot tos viena linija. Sapratu katras linijas
% pamatbutibas, tie ir loti butiskie un lidzigie
% elementaras matematikas butibam. Pievienoju tiklu
% lai darbs izskatijas akurati un skaidri.