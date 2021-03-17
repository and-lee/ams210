% Set 3a - sample commands
% Section 2.4
% Contents: 1: modular and binary arithmetic, Hamming error correction
%           2: norms of vectors and matrices
% 1. modular and binary arithmetic
% a. finding parity of a string of 0's and 1's
b1 = [ 1 0 1 1 0 1] % define a vector (here happens to have even parity)
s1 = sum(b1)        % compute the sum of vector's entries
% s1 = 4
p1 = mod(s1,2)      % find parity of vector b1; here 0
% p1 = 0
b2 = [ 1 1 1 0 1 1] % another example with odd parity
s2 = sum(b2)        % compute the sum of vector's entries
% s1 = 5
p2 = mod(s2,2)
% s2 = 1
% b. encoding a 7 bit signal with Hamming code
Q = [1 1 0 1;...   % encoding matrix defined
     1 0 1 1;...
     1 0 0 0;...
     0 1 1 1;...
     0 1 0 0;...
     0 0 1 0;...
     0 0 0 1]
 b = [1; 0; 1; 0]   % a signal (COLUMN VECTOR!!)
 cu = Q*b           % raw code (involves unprocessed sums)
 % cu =
 %    1
 %    2
 %    1
 %    1
 %    0
 %    1
 %    0
 c  = mod(cu,2)     % encoded signal after converting parity bits)
 % c =
 %    1
 %    0
 %    1
 %    1
 %    0
 %    1
 %    0
 % Now, let us decode the signal to get original; first verify that
 % the signal is error free
 M = [1 0 1 0 1 0 1; % error detecting matrix
      0 1 1 0 0 1 1;
      0 0 0 1 1 1 1]
 out = M*c
 %out = [2; 2; 2]
 err_vec = mod(out,2)   % convert to 0's and 1's
 % err_vec = [0; 0; 0]  % here it is a string of zeros
% convert error vector to a string array
str_err = num2str(fliplr(err_vec')); %needs the string as a ROW VECTOR!!!
% CAUTION: bin2dec converts a binary string to decimal but it
% assumes that the leftmost bit is the most significant bit.
% The way we (i.e. the Text) writes the decoding matrix M, the most
% significant bit appears in the bottom row. And the num2str command
% treats each row as a separate string - so we need to feed it our
% 3-bit string as a row vector with the most significant bit on the left.
% So we use the FLIPLR (flip left-to-right) command on err_vec'.
% str_err =
%   0  0  0
% remove the spaces in the string, so it 
% becomes '000'
str_err(isspace(str_err)) = '';
% str_err = 
%  000
% now use BIN2DEC to convert the binary 
% string to a decimal number
err = bin2dec(str_err)
% err =
%  0         % indicates there is no error; then original message is
b_orig = [ c(3); c(5); c(6); c(7)]
% b_orig = [1; 0; 1; 0]
% Now let us introduce a wrong bit in c, location 6:
c1 = c; 
c1(6) = mod(c(6) + 1,2)   % this will change the parity of c1(5)
out1 = M*c1
 %out1 = [3; 2; 3]
 err_vec1 = mod(out1,2)   % convert to 0's and 1's
 % err_vec1 = [1; 0; 1]  % here it is a string of zeros
% convert error vector to a string array
str_err1 = num2str(fliplr(err_vec1')); %needs the string as a ROW VECTOR!!!
% str_err =
%   1  0  1
% remove the spaces in the string, so it 
% becomes '000'
str_err1(isspace(str_err1)) = '';
% str_err = 
%  101
% now use BIN2DEC to convert the binary 
% string to a decimal number
err1 = bin2dec(str_err1)
% err1 =
%    5                    %identifies location 5 as the error location etc
%
%
