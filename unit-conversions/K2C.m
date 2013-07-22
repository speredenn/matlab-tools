function [T_in_C] = K2C(T_in_K)
% This function converts Kelvin in degree Celcius.
% It is compliant with matrix operations.
%
% USAGE
%
% [T_in_C] = K2C(T_in_K)
%
% EXAMPLE
%
% K2C(300);
% 
% Copyright (c) 2013 Jean-Baptiste Carré <jbc@0x1d.org>.
%

T_in_C = T_in_K - 273.15; % oC

end

