
function [ final_reward ] = Reward_Diff_After_10_Years( start_age , detect_year , bound )

                                       lump_sum_reward         = future_reward_immediate_detection( start_age , detect_year ) ;
   if( bound == "upper" ) 
                          reward_after_ten_years = future_reward_immediate_detection( start_age , 11 ) ;       
   end
   if( bound == "lower" ) 
                          reward_after_ten_years = future_reward_no_screen(           start_age      ) ;       
   end

   reward_at_detection_year = core_process( 3 , 3 , detect_year ) + 1/2 * core_process( 3 , 6 , detect_year ) ;

first_component = 0 ;
current_invasive_cancer_pr = 1 ; 
   for t = detect_year : 9
                                      current_invasive_cancer_pr = core_process( 3 , 3 , t      ) * current_invasive_cancer_pr        ;
                                      reward =                                  core_process( 3 , 3 , t +1 ) + 1/2 * core_process( 3 , 6 , t +1 ) ;
                                      reward =                                                                reward  * current_invasive_cancer_pr        ; 
                                      first_component = first_component + reward ;
   end

current_invasive_cancer_pr = 1 ; 
   for t = detect_year : 10
                                      current_invasive_cancer_pr = core_process( 3 , 3 , t      ) * current_invasive_cancer_pr        ;
   end
                                      second_component = reward_after_ten_years * current_invasive_cancer_pr        ; 

   final_reward =  lump_sum_reward  - (reward_at_detection_year + first_component + second_component ) ;

end