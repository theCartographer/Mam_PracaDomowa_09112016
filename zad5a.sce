clear;
function [y]=f(x)
y=2*sin(x)-x;
endfunction
function [y1]=f1(x)
y1=2*cos(x)-1;
endfunction
scf(1);
clf();
x=(1.2);
//fplot2d (x,f, style=[5]);
//fplot2d (x,f1, style=[3]);
x1=x-(f(x)/f1(x));
x2=x1-(f(x1)/f1(x1));
x3=x2-(f(x2)/f1(x2));
x4=x3-(f(x3)/f1(x3));
x5=x4-(f(x4)/f1(x4));
x6=x5-(f(x5)/f1(x5));

W=[x x1];

