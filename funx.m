function fx=funx(UR)
global E i0 a R
fx=i0*(exp(a*(E-UR))-1)-UR/R;
% e^(x)- japieraksta exp(x)