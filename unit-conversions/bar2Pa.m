function [P_in_Pa] = bar2Pa(P_in_bar)
% This function converts bar in Pascal.
% It is compliant with matrix operations.
%
% USAGE
%
% [P_in_Pa] = bar2Pa(P_in_bar)
%
% EXAMPLE
%
% bar2Pa(2);
%
% Copyright (c) 2013 Jean-Baptiste Carré <jbc@0x1d.org>.
%

P_in_Pa = P_in_bar * 100000;

end
