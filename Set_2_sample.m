% Set 2 - sample Matlab calculations -
% - an example of what you need to turn 
% in for the extra credit
% I added the output by copy-paste,
% normally you can save the output using the
% command:
%>> diary on
% and to stop recording: diary off
% 2.1.12cf
B = [-1  0  2  1;...
      2 -1 -1  0;...
      2  0  0  2] 
% b
2*B
%ans =

%    -2     0     4     2
%     4    -2    -2     0
%     4     0     0     4
%------------------
% 2.2.3ae
% A is same as in 2.1.12
C = [5 4 1;...
     1 0 2;...
     3 2 1;...
     0 1 3]
c = [ 2  5  8]
% a
c*C
% Error using  * 
% Inner matrix dimensions must agree.
% e
C*c
% Error using  * 
% Inner matrix dimensions must agree.
%------------------
% 2.2.4b
A = [1 2 3 4;
     2 4 6 8;
     3 5 7 9]
a = [1 2 3]
(a + c)*A
%ans =
%    50    89   128   167
%------------------
% 2.2.20-ish
A = [2 2;
     4 6]
B = [-3  1;...
      2 -1]
A*B - B*A
%ans =
%     0     0
%     0     0
%-------------------
% 2.2.27-ish
A = [2/3 2/3;...
     2/3 1/3]
A^2
%ans =
%   0.8889    0.6667
%   0.6667    0.5556
A^3
%ans =
%   1.0370    0.8148
%   0.8148    0.6296
A^4
%ans =
%   1.2346    0.9630
%   0.9630    0.7531
%-------------------