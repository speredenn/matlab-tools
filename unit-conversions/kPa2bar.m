function pressure_in_bar = kPa2bar(pressure_in_kPa)
% This function converts a pressure in kPa to a pressure in bar.
%
% INPUT
%
% - pressure_in_kPa: Pressure in kPa
%
% OUTPUT
%
% - pressure_in_bar: Pressure in bar
%
% USAGE
%
% pressure_in_bar = kPa2bar(pressure_in_kPa)
%
% EXAMPLE
%
% pressure = kPa2bar(100);
%

pressure_in_bar = pressure_in_kPa / 100 ;

end