function [ ratio  ] = RHS_2( start_age , screen_1 , screen_2 )

    
      if( screen_1 == "MAM+MRI" )
                                  screen_1_sens_t1 = sensMAM_MRI( start_age - 25 + 1 ) ; 
      end
      if( screen_1 == "US" )
                                 screen_1_sens_t1 = sensULTRA(    start_age - 25 + 1 ) ;
      end
      if( screen_1 == "MRI" )
                                 screen_1_sens_t1 = sensMRI(      start_age - 25 + 1 ) ;
      end
      if( screen_1 == "MAM" )
                                 screen_1_sens_t1 = sensMAM(      start_age - 25 + 1 ) ;
      end
      
      if( screen_2 == "MAM" )
                                 screen_2_sens_t1 = sensMAM(      start_age - 25 + 1 ) ;
                                 screen_2_sens_t6 = sensMAM(      start_age - 25 + 6 ) ;

      end
      if( screen_2 == "US" )
                                 screen_2_sens_t1 = sensULTRA(    start_age - 25 + 1 ) ;
                                 screen_2_sens_t6 = sensULTRA(    start_age - 25 + 6 ) ;
      end
      if( screen_2 == "MRI" )
                                 screen_2_sens_t1 = sensMRI(      start_age - 25 + 1 ) ;
                                 screen_2_sens_t6 = sensMRI(      start_age - 25 + 6 ) ;
      end

      numerator   = screen_1_sens_t1 - screen_2_sens_t1 ; 
      denominator =                    screen_2_sens_t6 ;
    
      ratio       = numerator/denominator;
     
     
end