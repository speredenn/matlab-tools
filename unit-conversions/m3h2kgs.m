function flow_in_kgs = m3h2kgs(flow_in_m3h,density)
% This function converts a volume flow in m^3/h to a mass flow in kg/s
% using the density of the fluid, given in kg/m^3.
%
% INPUT
%
% - flow_in_m3h: Flow in m^3/h
% - density: Density of the fluid, in kg/s
%
% OUTPUT
%
% - flow_in_kgs: Flow in kg/s
%
% USAGE
%
% flow_in_kgs = m3h2kgs(flow_in_m3h,density)
%
% EXAMPLE
%
% flow = m3h2kgs(6500);
% 
% Copyright (c) 2013 Jean-Baptiste Carré <jbc@0x1d.org>.
%

flow_in_kgs = flow_in_m3h * density / 3600 ;

% m3 kg
% h  m3 3600

end
