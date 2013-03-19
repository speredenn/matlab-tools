function [T_in_K] = C2K(T_in_C)
% This function converts degree Celcius in Kelvin.
% It is compliant with matrix operations.
%
% USAGE
%
% [T_in_K] = C2K(T_in_C)
%
% EXAMPLE
%
% C2K(300);
%

T_in_K = T_in_C + 273.15; % oC

end

