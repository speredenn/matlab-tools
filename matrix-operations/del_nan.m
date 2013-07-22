function new_mat = del_nan(mat,dim)
    
    if nargin == 1
        dim = 3;
    end
    
    switch dim
        case 1
            new_mat = mat(:,sum(~isnan(mat),1)~=0);
        case 2
            new_mat = mat(sum(~isnan(mat),2)~=0,:);
        case 3
            new_mat = mat(sum(~isnan(mat),2)~=0,sum(~isnan(mat),1)~=0);
    end
    
end