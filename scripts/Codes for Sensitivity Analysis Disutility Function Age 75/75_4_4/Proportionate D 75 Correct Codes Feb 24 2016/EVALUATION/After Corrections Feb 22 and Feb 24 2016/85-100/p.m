% p(j,s,a,t) = p(j|s,a,t) 
% probability of transition from state s to state j
% under action a at time t

function [ probability ] = p( j,s,a,t )

%-------------------------------------------------------------
if ( a==1 )
probability = core_process(s,j,t);
end
%-------------------------------------------------------------
if ( a==2 )
   if ( s==1 || s==4 || s== 5 || s==6 )
   probability = core_process(s,j,t);
   end
   if ( s==2 )
      if ( j==4 ) 
      probability = sensMAM(t);
      else
      probability = ( 1- sensMAM(t) )*core_process(s,j,t);
      end
   end
   if ( s==3 )
      if ( j==5 ) 
      probability = sensMAM(t);
      else
      probability = ( 1- sensMAM(t) )*core_process(s,j,t);
      end
   end   
end   
%-------------------------------------------------------------
if ( a==3 )
   if ( s==1 || s==4 || s== 5 || s==6 )
   probability = core_process(s,j,t);
   end
   if ( s==2 )
      if ( j==4 ) 
      probability = sensMRI(t);
      else
      probability = ( 1- sensMRI(t) )*core_process(s,j,t);
      end
   end
   if ( s==3 )
      if ( j==5 ) 
      probability = sensMRI(t);
      else
      probability = ( 1- sensMRI(t) )*core_process(s,j,t);
      end
   end   
end
%-------------------------------------------------------------
if ( a==4 )
   if ( s==1 || s==4 || s== 5 || s==6 )
   probability = core_process(s,j,t);
   end
   if ( s==2 )
      if ( j==4 ) 
      probability = sensULTRA(t);
      else
      probability = ( 1- sensULTRA(t) )*core_process(s,j,t);
      end
   end
   if ( s==3 )
      if ( j==5 ) 
      probability = sensULTRA(t);
      else
      probability = ( 1- sensULTRA(t) )*core_process(s,j,t);
      end
   end   
end
%-------------------------------------------------------------
if ( a==5 )
   if ( s==1 || s==4 || s== 5 || s==6 )
   probability = core_process(s,j,t);
   end
   if ( s==2 )
      if ( j==4 ) 
      probability = sensMAM_MRI(t);
      else
      probability = ( 1- sensMAM_MRI(t) )*core_process(s,j,t);
      end
   end
   if ( s==3 )
      if ( j==5 ) 
      probability = sensMAM_MRI(t);
      else
      probability = ( 1- sensMAM_MRI(t) )*core_process(s,j,t);
      end
   end   
end
%-------------------------------------------------------------

end