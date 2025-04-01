
function [ reward ] = future_reward_no_screen( start_age )

   end_age                    = 99 - start_age ;
   current_invasive_cancer_pr = 1 ;
   reward                     = 0 ;

   for t = 11: end_age
      current_death_pr           = current_invasive_cancer_pr * core_process( 3 , 6 , t ) ;
      current_invasive_cancer_pr = current_invasive_cancer_pr * core_process( 3 , 3 , t ) ;
      reward           = reward +  current_invasive_cancer_pr + 1/2 * current_death_pr    ;
   end
end