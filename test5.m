clc
clear
k1=0;
k2=0;
k3=0;
 tic
  f1=@(x,y,z) exp(1i*(k1*x*pi+k2*y*pi+k3*z*pi));
   g1=@(x,u,w) (f1(x,x.*u,x.*w)+ f1(x.*u,x.*w,x)+ f1(x.*w,x,x.*u))*pi^2;
 h1=@(x,u,w) g1(x,u,w).*x./(1+u.^2+w.^2).^(1/2);
  inth1=integral3(h1,0,1,0,1,0,1);
  toc
  tic
   f1=@(x,y,z) cos((k1*x*pi+k2*y*pi+k3*z*pi));
   g1=@(x,u,w) (f1(x,x.*u,x.*w)+ f1(x.*u,x.*w,x)+ f1(x.*w,x,x.*u))*pi^2;
 h1=@(x,u,w) g1(x,u,w).*x./(1+u.^2+w.^2).^(1/2);
  inth2=integral3(h1,0,1,0,1,0,1);
  f1=@(x,y,z) sin((k1*x*pi+k2*y*pi+k3*z*pi));
  g1=@(x,u,w) (f1(x,x.*u,x.*w)+ f1(x.*u,x.*w,x)+ f1(x.*w,x,x.*u))*pi^2;
 h1=@(x,u,w) g1(x,u,w).*x./(1+u.^2+w.^2).^(1/2);
  inth3=integral3(h1,0,1,0,1,0,1);
  toc
% tic
%  f=@(x,y,z) exp(1i*(k1*x+k2*y+k3*z))./(x.^2+y.^2+z.^2).^(1/2);
%   intf1=integral3(f,-pi,pi,-pi,pi,-pi,pi);
% toc
% tic
%  f=@(x,y,z) cos((k1*x+k2*y+k3*z))./(x.^2+y.^2+z.^2).^(1/2);
%   intf2=integral3(f,-pi,pi,-pi,pi,-pi,pi);
%  f=@(x,y,z) sin((k1*x+k2*y+k3*z))./(x.^2+y.^2+z.^2).^(1/2);
%   intf3=integral3(f,-pi,pi,-pi,pi,-pi,pi);
%   toc