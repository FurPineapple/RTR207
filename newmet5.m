function x=newmet5
x=0;
epsilon=1e-6;
delta= funx(x)/fund(x);
while abs(delta)>epsilon
delta= funx(x)/fund(x);
x=x-delta;
end