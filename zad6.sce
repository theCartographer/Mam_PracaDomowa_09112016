//sda();
scf(0);
clf(0);
da=gda();
da.title.text="Zad 6a";
da.x_location = "middle";
da.y_location = "middle";
function [y]=f(x)
y=x-cos(x);
endfunction
function [y1]=f1(x)
y1=1+sin(x);
endfunction
scf(0);
clf(0);
x=(-4:0.01:4)';
plot(x,f,x,f1);
legend('funkcja y=x-cos(x);','funkcja y=1+sin(x)');

eps = 0.00001; // precyzja
x_prev=1;
x = x_prev+1; // czy cokolwiek
iter = 0;
while iter < 100
    iter = iter + 1
    x = x_prev - f(x_prev)/f1(x_prev)
       if abs(f(x))<eps then
        plot(x, 0., 'b.');
        break;
    end
    x_prev = x;
end
// Metoda bisekcji
x_prevb = x_st;
x_b = 0;
a=0; b=%pi/2;
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
