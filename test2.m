syms x
expr = x*log(1+x);
F = int(expr,[0 1])

syms x
for k1=1:40


    f= exp(1i*(k1*x))/sqrt(x^2);
    s=double(int(f,[-pi pi]))
    f1(k1)=s;
end