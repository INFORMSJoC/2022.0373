function [ specificity ] = specCBE( time )


if ( time >= 1 && time <31)
    specificity = 0.99;
end

if ( time >= 31 )
    specificity = 0.99;
end

% 
% Current recommendations for women who have a BRCA1 or BRCA2 mutation are to undergo breast surveillance
% from age 25 years onward with mammography annually and clinical breast examination (CBE) every 6 months.
% 
% Efficacy of MRI and Mammography for Breast-Cancer Screening in Women with a Familial or Genetic Predisposition (2004)
% 
% The sensitivity of clinical breast examination, mammography, and MRI for detecting
% invasive breast cancer was 17.9 percent, 33.3 percent, and 79.5 percent, respectively,
% and the specificity was 98.1 percent, 95.0 percent, and 89.8 percent, respectively
% 
% 
% Screening with magnetic resonance imaging and mammography of a UK population at high familial risk of breast cancer:
%  a prospective multicentre cohort study (2005) 
% 
% % Leach et al screened 649 unaffected women
% % aged 35 to 49 years who had at least a 25% lifetime
% % risk of breast cancer (19% proven to have a
% % BRCA mutation) at 22 centers in the UK.11 After
% % a median of 3 rounds of screening, 35 cancers
% % (29 invasive) were diagnosed. Sensitivity of MRI
% % was 77%, compared with 40% for mammography,
% % with specificities of 81% and 93%, respectively.
% 
% Surveillance of BRCA1 and BRCA2 mutation carriers with 
% magnetic resonance imaging, ultrasound, mammography, and clinical breast examination. (2004)
% 
% The sensitivity and specificity (based on biopsy rates) were 
% 77% and 95.4% for MRI, 36% and 99.8% for mammography, 33% and 96% for ultrasound, and 9.1% and 99.3% for CBE, respectively. 

end

