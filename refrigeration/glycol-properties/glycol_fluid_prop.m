function prop_value = glycol_fluid_prop(T, property, glycol_cell)
% This function computes some fluid properties of ethylene glycol
% and water mixtures or propylene glycol and water mixtures. The
% computation method is a 2D interpolation using glycols mixtures
% with concentration ranging from 10 to 90%.
%
% Properties : - Thermal conductivity
%              - Density
%              - Specific heat
%              - Viscosity
%
% Syntax: value = glycol_fluid_prop(temperature, 'property', glycol_cell)
%
% Example :
% glycol = {'ethylene glycol', 0.4 ; 'water', 0.6};
% prop_value = glycol_fluid_prop(273.15, 'specific heat', glycol)
%
% TODO: Define the units in the documentation
%

concentration = glycol_cell{fliplr(cellfun(@(x) sum(ismember( ...
    'glycol', lower(x))), glycol_cell)>0)}*100;

glycol_name = glycol_cell{cellfun(@(x) sum(ismember( ...
    'glycol', lower(x))), glycol_cell)>0};

load([fileparts(which('glycol_fluid_prop')) '/glycols-properties.mat'])

switch lower(glycol_name)
    case 'ethylene glycol'
        data = egprops;
    case 'propylene glycol'
        data = pgprops;
end

switch lower(property)
    case 'thermal conductivity'
        property = 'lambda';
    case 'density'
        property = 'rho';
    case 'specific heat'
        property = 'cp';
    case 'viscosity'
        property = 'mu';
end

prop_value = interp2(10:10:90, data.T, data.(property), concentration, T);

end

