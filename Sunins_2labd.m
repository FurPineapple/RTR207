%% Ievads simboliskaja matematika
%% Merkis: iepazities ar matlaba simbolisko matematiku
%% 1 uzdevums
syms a b e x
eqn=a+e^(b*x^(2)-x)-100==0;
solx=solve(eqn,x)
%% 2 uzdevums
% mums ir jaatrod atvasinajums un ir jauzzime abas funkcijas grafiski ,
% intervala[0,213]
% 1 solis
syms x y
y=5*x+((x-1)*(x-2))/((x+1)*(x+2));
yd = diff(y,x);
%% definesim x
x = -3:0.01:0;
%% izteiksmes vektorizacija
yv = vectorize(y);
ydv = vectorize(yd);
%% Interpretesana
yn = eval(yv);
ydn = eval(ydv);
%% Uzzimesim grafiku
plot(x,yn,x,ydn)
ylim([-30000 40000])
yltx = latex(y);
yltxd = latex(yd);
%% Uztaisisim legend
h = legend(['$',yltx,'$'],['$',yltxd,'$'])
set(h,'Interpreter','Latex')
%% Secinajumi
% Pirma uzdevuma f-cija "solve" neatrda atbildi jo 
% "If solve returns an empty object, then no solutions exist. 
% If solve returns an empty object with a warning, solutions 
% might exist but solve did not find any solutions."

% Apguvu pieredzi f-ciju atvasinasana un vispareja simbolikska matematika.
% Iemacijos taisit grafikus ar nosaukumiem - komanda "legend". Iemacijos 
% salidzinat f-ciju un f-cijas atvasinajumu grafikus. Ar simboliskas
% matematikas palidzibu iemacijos noformet matematiskas formulas.