function [ expect ] = R( state,time )

expect = 0;
% Invasive Post-Cancer Reward

Invasive_reward =	[34.5534	;
	
	33.9761	;
	
	33.3995	;
	
	32.8238	;
	
	32.2491	;
	
	31.6755	;
	
	31.1031	;
	
	30.532	;
	
	29.9623	;
	
	29.3942	;
	
	28.8277	;
	
	28.263	;
	
	27.7001	;
	
	27.1392	;
	
	26.5804	;
	
	25.9299	;
	
	25.4025	;
	
	24.8751	;
	
	24.3474	;
	
	23.8196	;
	
	23.2919	;
	
	22.7648	;
	
	22.236	;
	
	21.7079	;
	
	21.18	;
	
	20.6521	;
	
	20.1245	;
	
	19.5974	;
	
	19.0744	;
	
	18.552	;
	
	18.0329	;
	
	17.5177	;
	
	17.0058	;
	
	16.4962	;
	
	15.9892	;
	
	15.4968	;
	
	15.0201	;
	
	14.546	;
	
	14.0759	;
	
	13.6082	;
	
	13.1442	;
	
	12.6854	;
	
	12.2287	;
	
	11.7766	;
	
	11.3265	;
	
	10.8796	;
	
	10.4356	;
	
	9.997	;
	
	9.565	;
	
	9.1354	;
	
	8.7155	;
	
	8.3041	;
	
	7.9004	;
	
	7.5053	;
	
	7.1171	;
	
	6.7423	;
	
	6.3772	;
	
	6.0215	;
	
	5.6823	;
	
	5.3559	;
	
	5.0458	;
	
	4.7491	;
	
	4.4693	;
	
	4.2159	;
	
	3.9662	;
	
	3.6307	;
	
	3.2181	;
	
	2.8404	;
	
	2.489	;
	
	2.1819	;
	
	1.9091	;
	
	1.6624	;
	
	1.4246	;
	
	1.1889	;
	
	0.9401	;

        0  ];

% Insitu Post-Cancer Reward

Insitu_reward =	[51.4728	;
	
	50.4719	;
	
	49.4757	;
	
	48.4844	;
	
	47.4982	;
	
	46.5172	;
	
	45.5416	;
	
	44.5716	;
	
	43.6073	;
	
	42.649	;
	
	41.6968	;
	
	40.7509	;
	
	39.8114	;
	
	38.8786	;
	
	37.9526	;
	
	36.9561	;
	
	36.0613	;
	
	35.1732	;
	
	34.2916	;
	
	33.4165	;
	
	32.5482	;
	
	31.6875	;
	
	30.831	;
	
	29.9819	;
	
	29.1393	;
	
	28.3033	;
	
	27.474	;
	
	26.6516	;
	
	25.8409	;
	
	25.0372	;
	
	24.2438	;
	
	23.4615	;
	
	22.6895	;
	
	21.9264	;
	
	21.1722	;
	
	20.4162	;
	
	19.6725	;
	
	18.9405	;
	
	18.2221	;
	
	17.5146	;
	
	16.8199	;
	
	16.1394	;
	
	15.4692	;
	
	14.8122	;
	
	14.165	;
	
	13.5289	;
	
	12.9033	;
	
	12.2913	;
	
	11.694	;
	
	11.1061	;
	
	10.5365	;
	
	9.9831	;
	
	9.4451	;
	
	8.923	;
	
	8.4148	;
	
	7.9277	;
	
	7.4573	;
	
	7.0028	;
	
	6.5723	;
	
	6.161	;
	
	5.7728	;
	
	5.4039	;
	
	5.0581	;
	
	4.7457	;
	
	4.4406	;
	
	4.0569	;
	
	3.6232	;
	
	3.225	;
	
	2.8671	;
	
	2.5557	;
	
	2.2804	;
	
	2.0325	;
	
	1.7914	;
	
	1.5479	;
	
	1.2789	;

        0  ];

%------------------------------------------------------
if(time == 0 )
% Expected Remaining Life Time if treatment initiated 
else
if ( state == 5 )
expect = Invasive_reward ( time+50 ) ;
end

if ( state == 4 )
expect = Insitu_reward ( time+50 ) ;
end

if ( state == 3 )
    Detect = 0.8; % probability_of_detection of BC before death
expect = Invasive_reward ( time+50 )*Detect ;
end

if ( state == 2 )
    Detect = 0.7; % probability_of_detection of BC before death
expect = Insitu_reward ( time+50 )*Detect ;
end

if ( state == 1 )
%LT = lifetime cancer probability after time t given healthy at time t
LT= 0.12;
expect = Insitu_reward ( time+50 )*(1/(1-LT)) ;
end


% -----------the terminal reward.---------------------

  BEGIN = 25+50;
  END   =100;
  T = (END - BEGIN) + 1;
 
                          if ( time == T )

if ( state == 6 )
expect = 0;
end

if ( state == 5 )
expect = 0.6;
end

if ( state == 4 )
expect = 0.6;
end

if ( state == 3 )
expect = 0.6;    %A POMDP Approach to Personalize Mammography Dr.Turgay Ayer
end

if ( state == 2 )
expect = 0.6;    %A POMDP Approach to Personalize Mammography Dr.Turgay Ayer
end

if ( state == 1 )
expect = 0.6 ;   %A POMDP Approach to Personalize Mammography Dr.Turgay Ayer
end

                             end

% -----------------------------------------------------------------
end

end