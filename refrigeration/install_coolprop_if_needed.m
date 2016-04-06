function [flag,status] = install_coolprop_if_needed(cpVersion, folderLocation)


if exist(folderLocation, 'dir') ~= 7
    
    originLocation = pwd;
    mkdir(folderLocation);

    cpWrapperFileNames = { ...
        '+CoolProp.7z'
        'CoolPropMATLAB_wrap.mexw32'
        'Example.m'
        'CoolPropsetup.m'
        'SwigRef.m'
        'CoolPropMATLAB_wrap.mexw64'
        'CoolPropMATLAB_wrap.mexa64'
        'CoolPropMATLAB_wrap.mexmaci64'
        };

    cpBaseUrl = ['http://downloads.sourceforge.net/project/coolprop/CoolProp/' cpVersion '/MATLAB'];
    cpWrapperFileUrls = cellfun(@(x) [cpBaseUrl '/' x], cpWrapperFileNames, ...
        'UniformOutput', 0);
    
    fprintf('Downloading CoolProp %s...\n', cpVersion)

    cd(folderLocation)
    
    fileID = fopen('README.txt','w') ;
    fprintf(fileID, 'CoolProp version: %s.\nInstalled on %s.\n', ...
        cpVersion, datestr(date, 23)) ;
    fclose(fileID) ;
    
    for i = 1: length(cpWrapperFileUrls)
        urlwrite(cpWrapperFileUrls{i}, cpWrapperFileNames{i});
    end
    
    mkdir('+CoolProp')
    movefile('+CoolProp.7z', '+Coolprop/+CoolProp.7z')
    cd('+CoolProp')
    [flag,status] = system(['"C:\Program Files\7-Zip\7z.exe" e ' ...
        [pwd '\+CoolProp.7z'] ' >null']);
    
    % Cleaning up
    delete('null', '+CoolProp.7z')
    
    fprintf('CoolProp %s has been installed.\n', cpVersion)
    cd(originLocation)
    
end


end

