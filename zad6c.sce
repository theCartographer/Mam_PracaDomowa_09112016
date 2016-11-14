//sda();
scf(0);
clf(0);
da=gda();
da.title.text="Zad 6a";
da.x_location = "middle";
da.y_location = "middle";
function [y]=f(x)
y=%e*(tan(x))-7;
endfunction
function [y1]=f1(x)
y1=(%e*tan(x))+(%e*1/((cos(x))^2));
endfunction
scf(0);
clf(0);
x=(0.1:0.1:10)';
plot(x,f,x,f1);
legend('funkcja.2*sin(x)-x','pochodna.2*cos(x)-1');

eps = 0.00001; // precyzja
x_prev=1;
x = x_prev+1; // czy cokolwiek
iter = 0;
while iter < 100
    iter = iter + 1
    x = x_prev - f(x_prev)/f1(x_prev)
    plot(x, 0., 'b.');
    if abs(x-x_prev)<eps then
        break;
    end
    x_prev = x;
end
