function jacobi2(  )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
% here scale variables by diagonal coefficients.
% if the resulting off-diagonal elements are such that each
% column sum is less than 1, then the off-diagonal matrix
% has sum norm less than 1-similar to Leontief situation
I = eye(3);
A = [20  4  4;
     10 14  5;
      5  5 12];
b  = [500; 850; 1000];
x = A\b;
A1 = [  1   4/14  4/12;
      10/20  1    5/12;
       5/20 5/14   1  ]
% since A*x = A1*z = b, where z = D*x
   D = [20 0 0 ; 0 14 0; 0 0 12];
   A2 = A*inv(D)
   D2 = I - A1;
   z = b
   for i = 1:100
       z = b + D2*z;
       z
   end
x1 = inv(D)*z
x
res1 = b-A*x1
res  = b-A*x
end

