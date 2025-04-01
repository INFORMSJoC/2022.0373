
function [ final_reward ] = Reward_Diff_Within_10_Years( start_age , detect_year , later_detect_diff )

   lump_sum_reward          = future_reward_immediate_detection( start_age , detect_year                     ) ;
   later_detect_reward      = future_reward_immediate_detection( start_age , detect_year + later_detect_diff ) ;

   reward_at_detection_year = core_process( 3 , 3 , detect_year ) + 1/2 * core_process( 3 , 6 , detect_year ) ;
    
first_component = 0 ;
current_invasive_cancer_pr = 1 ; 
   for t = detect_year : (detect_year + later_detect_diff - 2 )
                                      current_invasive_cancer_pr = core_process( 3 , 3 , t      ) * current_invasive_cancer_pr        ;
                                      reward =                                  core_process( 3 , 3 , t +1 ) + 1/2 * core_process( 3 , 6 , t +1 ) ;
                                      reward =                                                                reward  * current_invasive_cancer_pr        ; 
                                      first_component = first_component + reward ;
   end

current_invasive_cancer_pr = 1 ; 
   for t = detect_year : (detect_year + later_detect_diff - 1 )
                                      current_invasive_cancer_pr = core_process( 3 , 3 , t      ) * current_invasive_cancer_pr        ;
   end
                                      second_component           = later_detect_reward            * current_invasive_cancer_pr        ; 

   final_reward =  lump_sum_reward  - (reward_at_detection_year + first_component + second_component ) ;

end