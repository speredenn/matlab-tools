function [dyn_viscosoty_in_Pas] = cP2Pas(dyn_viscosity_in_centipoise)
% This function converts centiPoise in Pascal seconde.
% It is compliant with matrix operations.
%
% USAGE
%
% [dyn_viscosoty_in_Pas] = cP2Pas(dyn_viscosity_in_centipoise)
%
% EXAMPLE
%
% cP2Pas(200);
%

dyn_viscosoty_in_Pas = dyn_viscosity_in_centipoise * 1e-3;

end