//sda();
scf(0);
clf(0);
da=gda();
da.title.text="Zad 6a";
da.x_location = "middle";
da.y_location = "middle";
function [y]=f(x)
y=1000- 2*x+3*x^2/3;
endfunction
function [y1]=f1(x)
y1=2*x^(-1/3);
endfunction
scf(0);
clf(0);
x=(0.1:0.1:1000)';
plot(x,f,x,f1);
legend('funkcja.2*sin(x)-x','pochodna.2*cos(x)-1');

eps = 1; // precyzja
x_prev=100;
x = x_prev+1; // czy cokolwiek
iter = 0;
while iter < 10
    iter = iter + 1
    x = x_prev - f(x_prev)/f1(x_prev)
    plot(x, 0., 'b.');
    if abs(x-x_prev)<eps then
        break;
    end
    x_prev = x;
end
