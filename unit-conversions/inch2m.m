function [dist_in_m] = inch2m(dist_in_inch)
% This function converts inches in meters.
% It is compliant with matrix operations.
%
% USAGE
%
% [dist_in_m] = inch2m(dist_in_inch)
%
% EXAMPLE
%
% inch2m(1);
%

dist_in_m = dist_in_inch * (25.4e-3); % m

end

