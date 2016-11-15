//sda();
scf(0);
clf(0);
da=gda();
da.title.text="Zad 5b";
da.x_location = "middle";
da.y_location = "middle";
function [y]=f(x)
y=(sin(x)/x)-1/2;
endfunction
function [y1]=f1(x)
y1=cos(x)/x-sin(x)/x^2;
endfunction
scf(0);
clf(0);

x1=(-4:0.01:-0.01)';
x2=(0.01:0.01:4)';
x = [x1;x2];
y2 = 0.5*ones(length(x),1);

plot(x,sin(x)./x,x,y2);
legend('funkcja y=sin(x)/x','funkcja y=1/2');

eps = 0.0001; // precyzja
x_prev=1.1;
x = x_prev+1; // czy cokolwiek
iter = 0;
while iter < 100
    iter = iter + 1
    x = x_prev - f(x_prev)/f1(x_prev)
    if abs(f(x))<eps then
        plot(x,sin(x)/x,'r^')
        disp("Znaleziono rozwiazanie, x = ");
        disp(x);
        break;
    end
     x_prev = x;
end
