%9a
%{
a = [20 4; 10 14; 5 5]
b = [500; 850; 1000]
transpose(a)
transpose(a)*a
inv(transpose(a)*a)
(inv(transpose(a)*a))*(transpose(a))
(inv(transpose(a)*a))*(transpose(a))*b
a*((inv(transpose(a)*a))*(transpose(a))*b)

c = [30 60; 40 20; 20 20]
e = [1000; 500; 400]
f = [10; 0; 0]
transpose(c)
transpose(c)*c
det(transpose(c)*c)
inv(transpose(c)*c)
(inv(transpose(c)*c))*(transpose(c))
(inv(transpose(c)*c))*(transpose(c))*e
c*((inv(transpose(c)*c))*(transpose(c))*e)
(inv(transpose(c)*c))*(transpose(c))*f
%}
%14
X = [-4 2 1; -2 -1 1; 0 -2 1; 2 -1 1; 4 2 1]
z = [3; 6; 7; 7; 6]
(inv(transpose(X)*X))*(transpose(X))*(z)



