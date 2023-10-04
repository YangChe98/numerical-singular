% syms k1 k2 k3  x y z
%k1=1;
%k2=5;
%k3=1;
N=40;
for k1=1:40
    for k2=1:40
        for k3=1:40
f= @(x,y,z)exp(1i*(k1.*x+k2.*y+k3.*z))./sqrt(x.^2+y.^2+z.^2);
sol=integral3(f,-pi,pi,-pi,pi,-pi,pi);
A((k1-1)*N^2+(k2-1)*N+k3)=sol;
        end
    end
end
%sol=integral3(f,-pi,pi,-pi,pi,-pi,pi)
% sol1=int(f,x,[-pi pi]);
% sol2=int(sol1,y,[-pi pi]);
% sol3=int(sol2,z,[-pi pi]);