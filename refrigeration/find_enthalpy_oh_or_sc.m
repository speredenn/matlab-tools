function [h_outlet_hx,oh_or_sc_calc]= find_enthalpy_oh_or_sc(end_chph_cdtns,goal_T,fluid)
%FIND_ENTHALPY_OH_OR_SC find the enthalpy at the outlet of a
%condenser or an evaporator. It uses the physical properties at the end
%of the phase change and finds the enthalpy where the aimed temperature
%is reached.
%    

    h_outlet_hx = fzero(@find_enthalpy_oh_or_sc_fcn,...
        end_chph_cdtns.h);
    
    function [diff] = find_enthalpy_oh_or_sc_fcn(H_out)
        calc_struct = refprop('P',end_chph_cdtns.P,'h',H_out,fluid);
        diff = calc_struct.T - goal_T;
    end

    calc_struct = refprop('P',end_chph_cdtns.P,'h',h_outlet_hx,fluid);
    oh_or_sc_calc = abs(calc_struct.T - end_chph_cdtns.T);

end
