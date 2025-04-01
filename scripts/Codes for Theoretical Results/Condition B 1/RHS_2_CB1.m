function [ ratio  ] = RHS_2_CB1( start_age , screen_1 , screen_2 )

    
      if( screen_1 == "MAM+MRI" )
                                 screen_1_sens_t1 = sensMAM_MRI(  start_age - 25 + 1 ) ;
                                 screen_1_sens_t6 = sensMAM_MRI(  start_age - 25 + 6 ) ;
      end 
      if( screen_1 == "US" )
                                 screen_1_sens_t1 = sensULTRA(    start_age - 25 + 1 ) ;
                                 screen_1_sens_t6 = sensULTRA(    start_age - 25 + 6 ) ;
      end
      if( screen_1 == "MRI" )
                                 screen_1_sens_t1 = sensMRI(      start_age - 25 + 1 ) ;
                                 screen_1_sens_t6 = sensMRI(      start_age - 25 + 6 ) ;
      end
      if( screen_1 == "MAM" )
                                 screen_1_sens_t1 = sensMAM(      start_age - 25 + 1 ) ;
                                 screen_1_sens_t6 = sensMAM(      start_age - 25 + 6 ) ;
      end

      if( screen_2 == "MAM" )
                                 screen_2_sens_t1 = sensMAM(      start_age - 25 + 1 ) ;
                                 screen_2_sens_t3 = sensMAM(      start_age - 25 + 3 ) ;
                                 screen_2_sens_t5 = sensMAM(      start_age - 25 + 5 ) ;
                                 screen_2_sens_t7 = sensMAM(      start_age - 25 + 7 ) ;
                                 screen_2_sens_t9 = sensMAM(      start_age - 25 + 9 ) ;

      end
      if( screen_2 == "US" )
                                 screen_2_sens_t1 = sensULTRA(    start_age - 25 + 1 ) ;
                                 screen_2_sens_t3 = sensULTRA(    start_age - 25 + 3 ) ;
                                 screen_2_sens_t5 = sensULTRA(    start_age - 25 + 5 ) ;
                                 screen_2_sens_t7 = sensULTRA(    start_age - 25 + 7 ) ;
                                 screen_2_sens_t9 = sensULTRA(    start_age - 25 + 9 ) ;

      end
      if( screen_2 == "MRI" )
                                 screen_2_sens_t1 = sensMRI(      start_age - 25 + 1 ) ;
                                 screen_2_sens_t3 = sensMRI(      start_age - 25 + 3 ) ;
                                 screen_2_sens_t5 = sensMRI(      start_age - 25 + 5 ) ;
                                 screen_2_sens_t7 = sensMRI(      start_age - 25 + 7 ) ;
                                 screen_2_sens_t9 = sensMRI(      start_age - 25 + 9 ) ;

      end

      numerator   =         screen_1_sens_t6                       ; 
      denominator =    min( screen_2_sens_t7 , screen_2_sens_t9  ) ;
    
      ratio       =         numerator / denominator                ;
     
     
end
