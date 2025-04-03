function [ ratio , healthy , sick ] = LHS_CB1( start_age )

   if( start_age == 25 )
       initial_population = [ (1-1.53*0.0001055) (0.53*0.0001055) 0.0001055 ] ;
   end
   if( start_age == 35 )
       initial_population = [ (1-1.53*0.0012793) (0.53*0.0012793) 0.0012793 ] ;
   end
   if( start_age == 45 )
       initial_population = [ (1-1.53*0.0062865) (0.53*0.0062865) 0.0062865 ] ;
   end
   if( start_age == 55 )
       initial_population = [ (1-1.31*0.0140365) (0.31*0.0140365) 0.0140365 ] ;
   end
   if( start_age == 65 )
       initial_population = [ (1-1.31*0.0251512) (0.31*0.0251512) 0.0251512 ] ;
   end

   
       healthy = initial_population(1) ;


       sick    = initial_population(2) + initial_population(3) ; 
       ratio   = healthy / sick        ;


end
