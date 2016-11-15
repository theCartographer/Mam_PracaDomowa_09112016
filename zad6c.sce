scf(0);
clf(0);
clear();
da=gda();
da.title.text="Zad 6b";
da.x_location = "middle";
da.y_location = "middle";
function [y]=f(x)
y=%e^x*tan(x)-7;
endfunction
function [y1]=f1(x)
y1=%e^x*tan(x)+%e^x/cos(x)^2;
endfunction
scf(0);
clf(0);
x=(-10:0.01:10)';
y2 = 7*ones(length(x),1)';

//plot(x,x-cos(x))
//subplot(1,2,1)
plot(x,%e.^x.*tan(x),x,y2);
mtlb_axis([-4, 4, -3, 10]);
legend('funkcja e^x * tgx','funkcja y=7'); //tylko jedno rozwiazanie
//subplot(1,2,2)
//plot(x,x-cos(x))
//legend('funkcja y=x-cos(x)')

x_st = 8*%pi/6;


// Metoda Newtona
eps = 0.00001; // precyzja
x_prev=x_st;
x = 0; // czy cokolwiek
iter = 0;
while iter < 100
    iter = iter + 1;
    x = x_prev - f(x_prev)/f1(x_prev);
    if abs(f(x))<eps then
        disp("Znaleziono rozwiazanie metodą Newtona, x = ");
        disp(x);
        disp("Liczba wykonanych iteracji wynosiła:");
        disp(iter);
        break;
    end
    x_prev = x;
end

// Metoda bisekcji
x_prevb = x_st;
x_b = 0;
a=%pi/2; b=3*%pi/2;
iter_b = 0;

while iter_b < 100
    iter_b = iter_b + 1;
    if f(a)*f(x_prevb)<0 then
        b = x_prevb;
    elseif f(b)*f(x_prevb)<0 then
        a = x_prevb;
    end
    x_b = (a+b)/2;
    
    if abs(f(x_b))<eps then
        disp("Znaleziono rozwiazanie metodą bisekcji, x_b = ");
        disp(x_b);
        disp("Liczba wykonanych iteracji wyniosła:");
        disp(iter_b);
        break;
    end
    x_prevb = x_b;
    
end


[x x_b]
[iter iter_b]
abs(f(x)-eps)*10^5
abs(f(x_b)-eps)*10^5
