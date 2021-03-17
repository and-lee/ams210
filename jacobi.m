function jacobi( )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
% this iteration does not converge--matrix not diagonally dominant
I = eye(4)
D= [.1 .9 .2 .6;
%D= [.1 .1 .2 .6;    % replacing D22 by .1, restores convergence
    .3 .1 .3 .1;
    .1 .5  0 .5;
     0 .1 .7  0];
 b1 = [100;50;100;0];
 x1 = b1
 x = (I-D)\b1;
 for i = 1:600
     x1 = b1 + D*x1;
     x1
     %pause
 end
 x
 r1 = b1 - (I-D)*x1
 r  = b1 - (I-D)*x

