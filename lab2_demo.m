%% 2. laboratorijas darbs
%% Ievads simboliskajā matemātikā
syms a b c d
A=[a b;c d];
syms a1 b1 c1 d1
B=[a1 b1; c1 d1];
A.*B
%"Ctrl+Enter-ispildīt sekciju"
%% Kā definēt simbolisko mainīgo?
% 1.variants
x=sym('x');
sqrt(x^2)
% x > 0
x=sym('x','positive');
sqrt(x^2)
% 2. variants
syms a2 b2 c2 d2
A=[a2 b2; c2 d2];
A'
% syms elementi nav kompleksie
syms a2 b2 c2 d2 real
A=[a2 b2; c2 d2];
A'
% 3.variants
A=sym('a',[2 3])
%% Atvasināšana
% atvasināšana notiek ar diff funkciju
% sintakse:
% diff(ko_atvasināt, pēc_kā_atvasināt,...
% cik_reizes_atcasināt)
syms x
y=x^2;
diff(y)
syms x y
z=x^5*y^3;
diff(z,x)
diff(z,y)% norādam pēc ka atvasināt
% pēc x, vai pēc y
% daudzkartīgais atvasinājums
syms x
y=x^5;
diff(y,x,2)% otras kārtas atvasinājums
%% Integrēšana
syms x
int(x^2)
% sintakse:
% int(integrējama_funkcija,pēc_kā_integrēt)
syms x y
z=x^2*y^3
int(z,x)
int(z,y)
%% Noteiktais integrālis
syms x
y=x;
int(y,x,0,3)
int(x^2,x,-3,3)
%% Robežas
syms x
limit(1/(x-1),x,1,'left')
limit(1/(x-1),x,1,'right')
%% Vienādojumu risināšana
% dots x^2-3x+2=0
syms x
% sintakse:
% solve(izteiksme,ko_jāatrod)
% zem izteiksmes ir jāraksta
% izteiksmi ir jānoformē veidā:
% izteiksme=0
%un tad rakstam tikai kreiso pusi
solve(x^2-3*x+2,x)
%% Izteikmju vienkāršošana
syms x
y=(x-1)*(x-2)/((x-3)^2*(x-4));
z=diff(y,x)
% vienkāršosim atbildi
z2=simplify(z)
%% citas vienkāršojuma funkcijas
z=(x-1)*(x-2);
z1=expand(z)
factor(z1)
%% kā attēlot simbolisko funkciju
pretty(y)
%% kā attēlot simbolisko funkciju
yltx=latex(y);
h=text(0.5,0.5, ['$',yltx,'$']);
set(h,'Interpreter','LaTeX')
%% kā uzzīmēt grafiku no simboliskās funkcijas
ezplot(y)
%% kā uzzīmēt grafiku no simboliskās funkcijas
% (priekš laboratorijas darbā)
% 1.dots y=(x-1)/(x-2); ir jāatrod
% tās atvasinājums, un jāuzzīmē to
% dotājā intervālā
% 2.meklēsim atvasinājumu
syms x
y=(x-1)/(x-2);
yd=diff(y,x)
% 3.nodefinēsim intervālu, kurā
% uzzīmēsim mūsu funkciju
x= -2:0.01:4;
% 4. veiksim izteiksmes vektorizāciju
% jāliek punkti pirms reizīnāšanas, dalīšanas un
% kapināšanas
yv=vectorize(y)
ydv=vectorize(yd)
% 5.x vieta likšu 3. soli definētu
% vektoru ij\nterpretēsim izteiksmes
yn=eval(yv)
ydn=eval(ydv)
% 6. uzzīmēsīm grafiku ar funkciju plot
plot(x,yn,x,ydn)
ylim([-10 10])
% 7. grafiku anotācija
yltx=latex(y);
yltxd=latex(yd);
h=legend(['$',yltx,'$'],['$',yltxd,'$'])
set(h,'Interpreter','Latex')