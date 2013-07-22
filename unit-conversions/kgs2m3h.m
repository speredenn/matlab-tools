function flow_in_m3h = kgs2m3h(flow_in_kgs,density)
% This function converts a mass flow in kg/s to a volume flow in m^3/h
% using the density of the fluid, given in kg/m^3.
%
% INPUT
%
% - flow_in_kgs: Flow in kg/s
% - density: Density of the fluid, in kg/s
%
% OUTPUT
%
% - flow_in_m3h: Flow in m^3/h
%
% USAGE
%
% flow_in_kgs = m3h2kgs(flow_in_m3h,density)
%
% EXAMPLE
%
% flow = kgs2m3h(6500);
% 
% Copyright (c) 2013 Jean-Baptiste Carré <jbc@0x1d.org>.
%

flow_in_m3h = flow_in_kgs * 3600 / density ;

end
