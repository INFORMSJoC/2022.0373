function [ specificity ] = specMAM_MRI( time )


if ( time >= 1 && time <31)
    specificity = 0.86;
end

if ( time >= 31 )
    specificity = 0.86;
end

% Granader EJ, Dwamena B, Carlos RC. MRI and mammography surveillance of
% women at increased risk for breast cancer: recommendations using an evidence-based approach. Acad Radiol. 15(12):1590-5, 2008 

end

