function pressure_in_kPa = bar2kPa(pressure_in_bar)
% This function converts a pressure in kPa to a pressure in bar.
%
% INPUT
%
% - pressure_in_bar: Pressure in bar
%
% OUTPUT
%
% - pressure_in_kPa: Pressure in kPa
%
% USAGE
%
% pressure_in_kPa = bar2kPa(pressure_in_bar)
%
% EXAMPLE
%
% pressure = bar2kPa(1);
% 
% Copyright (c) 2013 Jean-Baptiste Carré <jbc@0x1d.org>.
%

pressure_in_kPa = pressure_in_bar * 100 ;

end
