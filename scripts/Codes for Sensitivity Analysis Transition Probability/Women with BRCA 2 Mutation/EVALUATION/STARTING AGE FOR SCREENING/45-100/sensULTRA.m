function [ sensitivity ] = sensULTRA( time )


if ( time >= 1 && time <= 5 )
    sensitivity = 0.786; % see #2
end

if ( time >= 6 )
    sensitivity = 0.740; % see #2
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

% #3 
% The comparative sensitivity of mammography and ultrasound in women with
% breast symptoms: an age-specific analysis
% Age  Ultrasound 
% 20–34    59.3               t = 1  - 10
% 35–39    70.7               t = 11 - 15
% 40–44    79.4               t = 16 - 20
% 45–49    75.8               t = 21 - 25
% 50–54    80.0               t = 26 - 30
% 55–59    80.9               t = 31 - 35
% 60–64    84.7               t = 36 - 40
% 65–69    80.0               t = 41 - 45
% 70–74    84.1               t = 46 - 50
% >= 75    88.0               t >= 51