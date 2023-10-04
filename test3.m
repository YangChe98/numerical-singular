d = [0 1];
[x,y,z] = meshgrid(d);
X = [x(:) y(:) z(:)];
T = [1 3 4 7;
     4 6 7 8;
     1 5 6 7;
     1 2 4 6;
     1 4 6 7];
tetramesh(T,X);
view(-40,20)