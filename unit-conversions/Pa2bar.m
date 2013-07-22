function [P_in_bar] = Pa2bar(P_in_Pa)
% This function converts Pascal in bar.
% It is compliant with matrix operations.
%
% USAGE
%
% [P_in_bar] = Pa2bar(P_in_Pa)
%
% EXAMPLE
%
% Pa2bar(200000);
% 
% Copyright (c) 2013 Jean-Baptiste Carré <jbc@0x1d.org>.
%

P_in_bar = P_in_Pa / 100000;

end
