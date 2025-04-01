function [ ratio  ] = RHS_3( start_age , screen_2 )

      if( screen_2 == "MAM" )
                                 screen_2_sens_t6 = sensMAM(      start_age - 25 + 6 ) ;

      end
      if( screen_2 == "US" )
                                 screen_2_sens_t6 = sensULTRA(    start_age - 25 + 6 ) ;
      end
      if( screen_2 == "MRI" )
                                 screen_2_sens_t6 = sensMRI(      start_age - 25 + 6 ) ;
      end

      denominator      =                            Reward_Diff_After_10_Years(  start_age , 6 , "lower" );
      numerator_part_1 =       screen_2_sens_t6   * Reward_Diff_Within_10_Years( start_age , 1 ,   5     );
      numerator_part_2 = ( 1 - screen_2_sens_t6 ) * Reward_Diff_After_10_Years(  start_age , 1 , "upper" );
      numerator        = numerator_part_1 + numerator_part_2 ; 
    
      ratio       = numerator/denominator;
     
end