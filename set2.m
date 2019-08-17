% Lee, Andrea - Set 2
% ID: 111738212
% 2.1 12ae
A = [1 2 3 4; 2 4 6 8; 3 5 7 9]
B = [-1 0 2 1; 2 -1 -1 0; 2 0 0 2]
% a
3*A
%ans =

%     3     6     9    12
%     6    12    18    24
%     9    15    21    27
% e
2*A+3*B
%ans =

%    -1     4    12    11
%    10     5     9    16
%    12    10    14    24
%------------------
% 2.2 3ae
A = [1 2 3 4; 2 4 6 8; 3 5 7 9]
B = [1 0 -1; 2 -2 0; 0 1 -1]
C = [5 4 1; 1 0 2; 3 2 1; 0 1 3]
a = [1 2 3]
b = [-1 3 -1]
c = [2 5 8]
% a
a*A
%ans =

%    14    25    36    47
% e
B*b
% Error using  * 
% Inner matrix dimensions must agree.
%------------------
% 2.2 4a
% a
(a*B)*c
% Error using  * 
% Inner matrix dimensions must agree.
%-------------------
