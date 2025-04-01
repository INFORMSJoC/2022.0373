function [ ] = Inequality( start_age , better_screen , worse_screen )


       [ LHS_ratio , LHS_healthy , LHS_sick ]        =   LHS( start_age ) ;
       [ RHS_1_incidence , RHS_1_inverse_incidence ] = RHS_1( start_age ) ;
         RHS_2_ratio     = RHS_2( start_age , better_screen , worse_screen ) ; 
         RHS_3_ratio     = RHS_3( start_age                 , worse_screen ) ; 

LHS_healthy 
LHS_sick 
RHS_1_incidence
RHS_2_ratio
RHS_3_ratio

   if( LHS_ratio >= RHS_1_inverse_incidence * RHS_2_ratio * RHS_3_ratio )
            1
   end
   if( LHS_ratio  < RHS_1_inverse_incidence * RHS_2_ratio * RHS_3_ratio )
            0
   end

end