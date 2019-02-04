%% uzzīmēsim 2. kārtas polinomu
C=[3 -4 5];
x=-6:2:6

x =

    -6    -4    -2     0     2     4     6

x=-6:2:6;
y=C(1)*x.^2+C(2)*x+C(3)

y =

   137    69    25     5     9    37    89

plot(x,y)% ar šo komandu zīme grafiku
plot(x,y,"o")
help plot
 <strong>plot</strong>   Linear plot. 
    <strong>plot</strong>(X,Y) plots vector Y versus vector X. If X or Y is a matrix,
    then the vector is plotted versus the rows or columns of the matrix,
    whichever line up.  If X is a scalar and Y is a vector, disconnected
    line objects are created and plotted as discrete points vertically at
    X.
 
    <strong>plot</strong>(Y) plots the columns of Y versus their index.
    If Y is complex, <strong>plot</strong>(Y) is equivalent to <strong>plot</strong>(real(Y),imag(Y)).
    In all other uses of <strong>plot</strong>, the imaginary part is ignored.
 
    Various line types, plot symbols and colors may be obtained with
    <strong>plot</strong>(X,Y,S) where S is a character string made from one element
    from any or all the following 3 columns:
 
           b     blue          .     point              -     solid
           g     green         o     circle             :     dotted
           r     red           x     x-mark             -.    dashdot 
           c     cyan          +     plus               --    dashed   
           m     magenta       *     star             (none)  no line
           y     yellow        s     square
           k     black         d     diamond
           w     white         v     triangle (down)
                               ^     triangle (up)
                               <     triangle (left)
                               >     triangle (right)
                               p     pentagram
                               h     hexagram
                          
    For example, <strong>plot</strong>(X,Y,'c+:') plots a cyan dotted line with a plus 
    at each data point; <strong>plot</strong>(X,Y,'bd') plots blue diamond at each data 
    point but does not draw any line.
 
    <strong>plot</strong>(X1,Y1,S1,X2,Y2,S2,X3,Y3,S3,...) combines the plots defined by
    the (X,Y,S) triples, where the X's and Y's are vectors or matrices 
    and the S's are strings.  
 
    For example, <strong>plot</strong>(X,Y,'y-',X,Y,'go') plots the data twice, with a
    solid yellow line interpolating green circles at the data points.
 
    The <strong>plot</strong> command, if no color is specified, makes automatic use of
    the colors specified by the axes ColorOrder property.  By default,
    <strong>plot</strong> cycles through the colors in the ColorOrder property.  For
    monochrome systems, <strong>plot</strong> cycles over the axes LineStyleOrder property.
 
    Note that RGB colors in the ColorOrder property may differ from
    similarly-named colors in the (X,Y,S) triples.  For example, the 
    second axes ColorOrder property is medium green with RGB [0 .5 0],
    while <strong>plot</strong>(X,Y,'g') plots a green line with RGB [0 1 0].
 
    If you do not specify a marker type, <strong>plot</strong> uses no marker. 
    If you do not specify a line style, <strong>plot</strong> uses a solid line.
 
    <strong>plot</strong>(AX,...) plots into the axes with handle AX.
 
    <strong>plot</strong> returns a column vector of handles to lineseries objects, one
    handle per plotted line. 
 
    The X,Y pairs, or X,Y,S triples, can be followed by 
    parameter/value pairs to specify additional properties 
    of the lines. For example, <strong>plot</strong>(X,Y,'LineWidth',2,'Color',[.6 0 0]) 
    will create a plot with a dark red line width of 2 points.
 
    Example
       x = -pi:pi/10:pi;
       y = tan(sin(x)) - sin(tan(x));
       plot(x,y,'--rs','LineWidth',2,...
                       'MarkerEdgeColor','k',...
                       'MarkerFaceColor','g',...
                       'MarkerSize',10)
 
    See also <a href="matlab:help plottools">plottools</a>, <a href="matlab:help semilogx">semilogx</a>, <a href="matlab:help semilogy">semilogy</a>, <a href="matlab:help loglog">loglog</a>, <a href="matlab:help plotyy">plotyy</a>, <a href="matlab:help plot3">plot3</a>, <a href="matlab:help grid">grid</a>,
    <a href="matlab:help title">title</a>, <a href="matlab:help xlabel">xlabel</a>, <a href="matlab:help ylabel">ylabel</a>, <a href="matlab:help axis">axis</a>, <a href="matlab:help axes">axes</a>, <a href="matlab:help hold">hold</a>, <a href="matlab:help legend">legend</a>, <a href="matlab:help subplot">subplot</a>, <a href="matlab:help scatter">scatter</a>.

    <a href="matlab:doc plot">Reference page for plot</a>
    <a href="matlab:matlab.internal.language.introspective.overloads.displayOverloads('plot')">Other functions named plot</a>

plot(x,y,"g")
plot(x,y,"g","o")
{Error using <a href="matlab:matlab.internal.language.introspective.errorDocCallback('plot')" style="font-weight:bold">plot</a>
Invalid data argument.
} 
plot(x,y,"g","o")
{Error using <a href="matlab:matlab.internal.language.introspective.errorDocCallback('plot')" style="font-weight:bold">plot</a>
Invalid data argument.
} 
plot(x,y,"go:")
plot(x,y,"ro:p")
{Error using <a href="matlab:matlab.internal.language.introspective.errorDocCallback('plot')" style="font-weight:bold">plot</a>
Error in color/linetype argument.
} 
plot(x,y,"r:p")
x2=-6:0.01:6;
y2=C(1)*x2.^2+C(2)*x2+C(3);
plot(x,y,"r:p")
plot(x2,y2,"r:p")
plot(x2,y2,"rp")
plot(x2,y2,"r-")
% divi grafiki
plot(x,y,x2,y2)
plot(x,y,"rp",x2,y2)
% citas grafiskas f-cijas
stem(x,y)
stairs(x,y)
stairs(x,y,"rp")
bar(x,y)
plot(x,y)
% interaktīvo līniju biezumu un krasas maiņa u.c.
% click bultiņu - Aktivizējam grafiku
% Edit- Current Object properties
mans_grafiks(x2,y2)
%% kā uzzīmēt divus grafikus - 2. paņemiens
t=0:0.01:1;
y1=sin(2*pi*t);
y2=cos(2*pi*t);
stairs(t,y1)
hold on % iesaldēt asis
stairs(t,y2)
hold off
% anotācija
xlabel("t,s")
ylabel("signāls,V")
title("Mans grafiks")
grid
legend("sin","cos")
gtext("\leftarrow sin")
gtext("\leftarrow cos")
gtext("\rightarrow cos")
%% Lisažu figūras
edit
lisazu
lisazu
lisazu
lisazu
lisazu
lisazu
lisazu
lisazu
{Error: <a href="matlab: opentoline('/home/user/lab0/lisazu.m',2,7)">File: lisazu.m Line: 2 Column: 7
</a>Invalid expression. Check for missing multiplication operator, missing or unbalanced delimiters, or other
syntax error. To construct matrices, use brackets instead of parentheses.
} 
lisazu
{Error: <a href="matlab: opentoline('/home/user/lab0/lisazu.m',2,7)">File: lisazu.m Line: 2 Column: 7
</a>Invalid expression. Check for missing multiplication operator, missing or unbalanced delimiters, or other
syntax error. To construct matrices, use brackets instead of parentheses.
} 
lisazu
diary off
