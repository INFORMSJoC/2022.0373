function [ sensitivity ] = sensMAM_MRI( time )

if ( time >= 1 && time <31)
    sensitivity = 0.94;
end

if ( time >= 31 )
    sensitivity = 0.94;
end

end

% Granader EJ, Dwamena B, Carlos RC. MRI and mammography surveillance of
% women at increased risk for breast cancer: recommendations using an evidence-based approach. Acad Radiol. 15(12):1590-5, 2008



