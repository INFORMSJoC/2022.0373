function [ matrix ] = adjust_the_matrix_for_high_risk(five_year_risk, P)
       
half_year_risk = 1 - ( (1-five_year_risk)^(1/10) );

matrix = P;

          if ( matrix(1,3) < half_year_risk )
              
          alive = matrix(1,1) + matrix(1,2) + matrix (1,3) ;

          ratio_1_2 = matrix(1,2)/( matrix(1,2) + matrix(1,3) );
          ratio_1_3 = matrix(1,3)/( matrix(1,2) + matrix(1,3) );
          
          matrix(1,3) = half_year_risk*ratio_1_3;
          matrix(1,2) = half_year_risk*ratio_1_2;
          matrix(1,1) = alive - matrix(1,2) - matrix(1,3);

          end
       
end
