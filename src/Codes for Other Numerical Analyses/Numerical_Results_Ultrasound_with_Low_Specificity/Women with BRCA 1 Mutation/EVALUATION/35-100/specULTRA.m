function [ specificity ] = specULTRA( time )


if ( time >= 1 && time <= 5 )
    specificity = 0.798; % no data --> use #1
end

if ( time >= 6 && time <= 15 )
    specificity = 0.798; % see #1
end

if ( time >= 16 && time <= 25 )
    specificity = 0.798; % see #2
end

if ( time >= 26 )
    specificity = 0.798; % see #2
end


end

% #1
% www.ncbi.nlm.nih.gov/pubmed/23096195
% Accuracy and value of breast ultrasound for primary imaging evaluation of
% symptomatic women 30 - 39 years of age 

% #2
% Comparison of the Performance of Screening Mammography, Physical
% Examination, and Breast US and Evaluation of Factors that
% Influence Them: An Analysis of 27,825 Patient Evaluations