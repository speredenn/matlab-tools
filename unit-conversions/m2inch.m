function [dist_in_inch] = m2inch(dist_in_m)
% This function converts meters to inches.
% It is compliant with matrix operations.
%
% USAGE
%
% [dist_in_inch] = m2inch(dist_in_m)
%
% EXAMPLE
%
% m2inch(1);
% 
% Copyright (c) 2013 Jean-Baptiste Carré <jbc@0x1d.org>.
%

dist_in_inch = dist_in_m / 25.4e-3; % inch

end

