function [dyn_viscosity_in_centipoise] = Pas2cP(dyn_viscosoty_in_Pas)
% This function converts Pascal seconde in centiPoise.
% It is compliant with matrix operations.
%
% USAGE
%
% [dyn_viscosity_in_centipoise] = Pas2cP(dyn_viscosoty_in_Pas)
%
% EXAMPLE
%
% Pas2cP(200);
% 
% Copyright (c) 2013 Jean-Baptiste Carré <jbc@0x1d.org>.
%

dyn_viscosity_in_centipoise = dyn_viscosoty_in_Pas * 1e3;

end
