

function LB = convert_policy(data,Time)

% Use N M R U C for NO SCR, MAM, MRI, ULTRA, and MAM+MRI respectively.
% Use Capital Letters.
% Use Space after each character.
%  N = 78 
%  M = 77
%  R = 82
%  U = 85
%  C = 67    



   Policy = double(data);
   L = length(Policy)/2;

   policy_row = zeros (1,L);
   j=1;
        for i = 1:2:length(Policy)
                      if(Policy(i) == 78)
                      policy_row(j) = 1;
                      end
                      if(Policy(i) == 77)
                      policy_row(j) = 2; 
                      end
                      if(Policy(i) == 82)
                      policy_row(j) = 3;
                      end
                      if(Policy(i) == 85)
                      policy_row(j) = 4;
                      end
                      if(Policy(i) == 67)
                      policy_row(j) = 5; 
                      end
                      j=j+1;
        end

% 1=WAIT, 2=MAMMOGRAM, 3=MRI, 4=ULTRASOUND, 5=MRI+MAM 

% 1=HEALTHY, 2=IN-SITU BC, 3=INVASIVE BC, 4=IN-SITU TREATMENT, 5=INVASIVE TREATMENT, 6=DEATH 
% 1=WAIT, 2=MAMMOGRAM, 3=MRI, 4=ULTRASOUND, 5=MRI+MAM 

Action = 5;
State  = 6;
AST = Action*State*Time;

lb = [ zeros(1,AST) ];

A = [0 0 0 1 1 1 ...
     0 0 0 0 0 0 ...
     0 0 0 0 0 0 ...
     0 0 0 0 0 0 ...
     0 0 0 0 0 0];

   for i=1:L
   A_modified = A;
                      if (policy_row(i) == 1)
                      A_modified(1) = 1;
                      end 
                      if (policy_row(i) == 2)
                      A_modified(7) = 1;
                      end        
                      if (policy_row(i) == 3)
                      A_modified(13) = 1;
                      end          
                      if (policy_row(i) == 4)
                      A_modified(19) = 1;
                      end      
                      if (policy_row(i) == 5)
                      A_modified(25) = 1;
                      end 

   lb = [ lb A_modified ];
        clear A_modified;

   end

   LB = [lb A];
 
end


