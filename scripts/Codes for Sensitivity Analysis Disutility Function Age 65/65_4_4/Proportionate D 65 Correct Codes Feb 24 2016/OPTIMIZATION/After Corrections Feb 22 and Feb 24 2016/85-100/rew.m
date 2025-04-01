
% BIOPSY LINEARITY SLOPE = (4/52-2/52)/(100-40)
% SCREENING LINEARITY SLOPE = (1/365 - 0.5/365)/(100-40).
% BEFORE YOU WERE DOING A MISTAKE AND SETTING 
% SCREENING LINEARITY SLOPE <? BIOPSY LINEARITY SLOPE 

function [reward] = rew(state,action,time)


% PREVIOUSLY, YOU WERE INCREASING ONLY BIOPSY DISUTILITY
% KEEPING SCREENING DISUTILITY CONSTANT

% THAT MEANS WE WERE INCREASING DISUTILITY FOR POSITIVE OUTCOMES
% (TRUE OR FALSE) WHILE KEEPING DISUTILITY FOR NEGATIVE OUTCOMES CONSTANT

% In our base-case analysis, we use the following values
% for the disutility associated with mammography: 
% (a) 0.5 days for a negative mammogram (Mandelblatt et al. 1992),
% (b) two weeks for a true positive mammogram (Velanovich % 1995), and 
% (c) four weeks for a false-positive mammogram,
% because the literature reports that the disutility for a falsepositive
% mammogram is higher than that for a true-positive
% mammogram (Earle et al. 2000).

start_age=85;
initiation_age=65;

%----------------------------------------------------------------% 
t=time;
a=action;
s=state;
R = 1; % the review period in terms of years R=1--> annual review
%----------------------------------------------------------------% 
false_true_ratio=4/2; %disutility ratio of false positive to true positive

%----------------------------------------------------------------% 
% DISUTILITIES ARE CONVERTED TO A YEAR

% disutility_of_mammography = 0.5/365;
   D_MAM_40 = 0.5/365;
% disutility_of_MRI = 0.5/365;
   D_MRI_40 = 0.5/365;
% disutility_of_Ultrasound = 0.5/365;
   D_ULTRA_40 = 0.5/365;
% disutility of mammography + MRI
 D_MAM_MRI_40 = D_MRI_40 + D_MAM_40;

%----------------------------------------------------------------% 
% disutility_of_biopsy= 2/52 between age 25 % 40 and linearly increase;
factor=4; %BURNSIDE,ALAGOZ,AYVACI,CHHATWAL
disutility_age_40 =2/52; 
disutility_age_100 = disutility_age_40*factor;
slope = (disutility_age_100-disutility_age_40)/(100-40);

factor_screening = 4;
D_MAM_100         = factor_screening*D_MAM_40        ;
D_MRI_100         = factor_screening*D_MRI_40        ;
D_ULTRA_100       = factor_screening*D_ULTRA_40      ;
D_MAM_MRI_100     = factor_screening*D_MAM_MRI_40    ;


slope_MAM     = (D_MAM_100-D_MAM_40)/(100-40);
slope_MRI     = (D_MRI_100-D_MRI_40)/(100-40);
slope_ULTRA   = (D_ULTRA_100-D_ULTRA_40)/(100-40);
slope_MAM_MRI = (D_MAM_MRI_100-D_MAM_MRI_40)/(100-40);


 if(start_age == 25)
     if ( time >= 1 && time <=15)
         D_BIO = disutility_age_40; 
         D_MAM     =      D_MAM_40;
         D_MRI     =      D_MRI_40;
         D_ULTRA   =    D_ULTRA_40;
         D_MAM_MRI =  D_MAM_MRI_40;
     else
         D_BIO = disutility_age_40 + 0 + slope*(time-15); 
         D_MAM     = D_MAM_40      + 0 + slope_MAM*(time-15);
         D_MRI     = D_MRI_40      + 0 + slope_MRI*(time-15);
         D_ULTRA   = D_ULTRA_40    + 0 + slope_ULTRA*(time-15);
         D_MAM_MRI = D_MAM_MRI_40  + 0 + slope_MAM_MRI*(time-15);

     end    
 end

 if(start_age == 35)
     if ( time >= 1 && time <=5)
         D_BIO = disutility_age_40; 
         D_MAM     =      D_MAM_40;
         D_MRI     =      D_MRI_40;
         D_ULTRA   =    D_ULTRA_40;
         D_MAM_MRI =  D_MAM_MRI_40;
     else
         D_BIO = disutility_age_40 + 0 + slope*(time-5); 
         D_MAM     = D_MAM_40      + 0 + slope_MAM*(time-5); 
         D_MRI     = D_MRI_40      + 0 + slope_MRI*(time-5); 
         D_ULTRA   = D_ULTRA_40    + 0 + slope_ULTRA*(time-5); 
         D_MAM_MRI = D_MAM_MRI_40  + 0 + slope_MAM_MRI*(time-5); 
     end    
 end 

if(start_age >= 45)
         D_BIO = disutility_age_40 + (start_age-40)*slope + slope*(time); 
         D_MAM     = D_MAM_40      + (start_age-40)*slope_MAM + slope_MAM*(time); 
         D_MRI     = D_MRI_40      + (start_age-40)*slope_MRI + slope_MRI*(time); 
         D_ULTRA   = D_ULTRA_40    + (start_age-40)*slope_ULTRA + slope_ULTRA*(time); 
         D_MAM_MRI = D_MAM_MRI_40  + (start_age-40)*slope_MAM_MRI + slope_MAM_MRI*(time); 
end
   
%----------------------------------------------------------------%  
 
% disutility_of_false_positive_mammogram_leading_to_biopsy 
   D_FALSE_POS_MAM_BIO = D_BIO*false_true_ratio;

% disutility_of_false_positive_MRI_leading_to_biopsy 
   D_FALSE_POS_MRI_BIO = D_BIO*false_true_ratio;

% disutility_of_false_positive_Ultrasound_leading_to_biopsy 
   D_FALSE_POS_ULTRA_BIO = D_BIO*false_true_ratio;

% disutility_of_false_positive_mammogram+MRI_leading_to_biopsy 
   D_FALSE_POS_MAM_MRI_BIO = D_BIO*false_true_ratio;
%----------------------------------------------------------------% 
   
% PROBABILITY OF BEING ALIVE OR DEATH
alive = core_process(s,s,t) + core_process(s,s+1,t) + core_process(s,s+2,t);
dead =  core_process(state,6,time);

%INITIALIZATION
reward=0;
disutility = 0;

if (action == 1)
    reward = R*alive + (R/2)*dead - disutility; 
end

if (action == 2)
   if (s== 1)   
      disutility = D_MAM + ( 1-specMAM(t) )*(D_FALSE_POS_MAM_BIO) ;
                     if(start_age < initiation_age && time <= initiation_age-start_age)
                        disutility=0;
                     end
      reward = R*alive + (R/2)*dead - disutility;  
      %   reward = reward + disutility;
   else 
       disutility = D_MAM + sensMAM(t)*(D_BIO);
                            if(start_age < initiation_age && time <= initiation_age-start_age)
                               disutility=0;
                            end
      reward = R*alive + (R/2)*dead - disutility;    
   %   reward = reward + disutility;
   end
end

if (action == 3)
   if (s== 1)   
      disutility = D_MRI + ( 1-specMRI(t) )*(D_FALSE_POS_MRI_BIO);
                           if(start_age < initiation_age && time <= initiation_age-start_age)
                              disutility=0;
                           end
      reward = R*alive + (R/2)*dead - disutility;
   %   reward = reward + disutility;
   else 
       disutility = D_MRI + sensMRI(t)*(D_BIO);
                           if(start_age < initiation_age && time <= initiation_age-start_age)
                              disutility=0;
                           end       
      reward = R*alive + (R/2)*dead - disutility;    
   %   reward = reward + disutility;
   end
end

if (action == 4)
   if (s== 1)   
      disutility = D_ULTRA + ( 1-specULTRA(t) )*D_FALSE_POS_ULTRA_BIO;
                           if(start_age < initiation_age && time <= initiation_age-start_age)
                              disutility=0;
                           end      
      reward = R*alive + (R/2)*dead - disutility;
    %  reward = reward + disutility;
   else 
      disutility = D_ULTRA + sensULTRA(t)*(D_BIO);
                           if(start_age < initiation_age && time <= initiation_age-start_age)
                              disutility=0;
                           end      
      reward = R*alive + (R/2)*dead - disutility; 
     % reward = reward + disutility;
   end
end

if (action == 5)
   if (s== 1)   
      disutility = D_MAM_MRI + ( 1-specMAM_MRI(t) )*D_FALSE_POS_MAM_MRI_BIO;
     % disutility = 0;
                           if(start_age < initiation_age && time <= initiation_age-start_age)
                              disutility=0;
                           end     
      reward = R*alive + (R/2)*dead - disutility;
   else 
      disutility = D_MAM_MRI + sensMAM_MRI(t)*(D_BIO);
     % disutility = 0;
                           if(start_age < initiation_age && time <= initiation_age-start_age)
                              disutility=0;
                           end     
      reward = R*alive + (R/2)*dead - disutility;    
   end
end

end

