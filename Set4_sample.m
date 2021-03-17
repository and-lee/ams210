% Set 4 - sample problems and hints
%-------------------------------
%  VECTOR AND MATRIX NORMS
v = [ -2 2 -1 0 4]
vs = norm(v,1) ; % computes sum norm
% vs = 9
ve = norm(v,2) ; % computes Euclidean norm
% ve = 5
vm = norm(v,inf) % computes max norm (also known as "infinity norm')
% vm = 4
% notice that vs >= ve >= vm ; this is always true
A = [ 1  3  7;...
      9 -5 -6;...
     -1  0  8]
As = norm(A,1)
% As = 21
Am = norm(A,inf)
% Am = 20
% notice that norm(A,1) = norm(A',inf) and vise versa
Ats = norm(A',1)
%Ats = 20
Atm = norm(A',inf)
%Atm = 21
% Euclidean norm is same for A and A'
Ae = norm(A,2)
% Ae = 14.31867
Ate = norm(A',2)
% Ate = 14.31867
%-------------------------------
% Finding eigenvalues and eigenvectors: eig
% >>help eig
% [V,D] = eig(A) produces a diagonal matrix D of eigenvalues and 
%    a full matrix V whose columns are the corresponding eigenvectors  
%    so that A*V = V*D
%-------------------------------
% 2.5.26(c)
A = [1 6;-2 -6]
[V, D] = eig(A)
% V =
%    0.8944   -0.8321
%   -0.4472    0.5547
% D =
%   -2     0
%    0    -3
% what we see here is the usual issue when doing things computationally:
% the numbers dont alway come out "whole"
% this answer shows the eigenvalues as 
%  lambda1 = -2
%  lambda2 = -3
% but the eigenvectors come out as 
% v1 = [ 0.8944 ]  and  v2 = [-0.8321 ]
%      [-0.4472 ]            [ 0.5547 ]
% which at first look appear to be different than the given ones
% u1 = [ -2 ]      and  u2 = [ -3 ]
%      [  1 ]                [  2 ]
%don't look like the given ones
% However we know that if v is an eigenvector of eigenvalue lambda,
% so is also any multiple of v. Here, it is easy to see that
% v1 = -0.4472*u1  and  v2 = (0.5547/2)*u2  (try it!) so that
% u1 is the eigenvector corresponding to eigenvalue (-2) and
% u2  corresponds to eigenvalue (-3). Since we are given the eigenvectors,
% we actually don't need to use the EIG command. We can simply multiply:
u1 = [-2; 1]
A*u1
% = [ 4 ; -2]
% so A*u1 = -2*u1  and -2 is the eigenvalue
u2 = [ -3; 2]
A*u2
% = [ 9 ; -6] 
% so A*u2 = -3*u2  and -3 is the eigenvalue
%----------------------
% 2.5.27b
A = [ 1/4 1/2; 3/4 1/2]
p = [2/5 ; 3/5]
A*p
% = [ 0.4 ; 0.6] = p so p is the stable probability vector
% we could also have used
[V, D ] = eig(A)
% V =
%  -0.7071   -0.5547
%   0.7071   -0.8321
%D =
%  -0.2500         0
%        0    1.0000
% so we see that the second column of V is the eigenvector corresponding
% to eigenvalue 1. How could we convert it to the given form? Remember
% a probability vector must have elements that are positive and sum to 1:
% so we could find the sum norm of V2 and divide it by that to get
% a unit vector (in the sum norm)
v2 = [-0.5547 ; -0.8321]
s2 = norm(v2,1)  % can also simply add the absolute values of these)
u2 = (1/s2)*v2
%s2 =
%   1.3868
% u2 =
%  -0.4000
%  -0.6000
%and this is (-1) times the given vector (and yes, it is the same as
%eigenvectors go, but we need to convert it to a vector with positive
%entries to get the stable probability vector. One more example of
%needing to know what we are doing to be able to use any software
%effectively!
%------------------------------
