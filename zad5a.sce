//sda();
scf(0);
clf(0);
da=gda();
da.title.text="Zad 5a";
da.x_location = "middle";
da.y_location = "middle";
function [y]=f(x)
y=x-2*sin(x);
endfunction
function [y1]=f1(x)
y1=1-2*cos(x);
endfunction
scf(0);
clf(0);
x=(-4:0.1:4)';
//plot(x,f,x,f1);
plot(x,x,x,2*sin(x));
legend('funkcja y=x','pochodna.2*cos(x)-1');

eps = 0.0001; // precyzja
x_prev=1.1;
x = x_prev+1; // czy cokolwiek
iter = 0;
while iter < 100
    iter = iter + 1
    x = x_prev - f(x_prev)/f1(x_prev)
    if abs(f(x))<eps then
        plot(x, 0., 'b.');
        disp("Znaleziono rozwiazanie, x = ");
        disp(x);
        break;
    end
     x_prev = x;
end
