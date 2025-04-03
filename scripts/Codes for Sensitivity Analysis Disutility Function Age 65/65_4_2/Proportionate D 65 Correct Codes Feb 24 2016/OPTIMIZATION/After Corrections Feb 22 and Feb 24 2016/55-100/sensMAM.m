function [ sensitivity ] = sensMAM( time )




if ( time >= 1 && time <= 5 )
    sensitivity = 0.815;
end

if ( time >= 6 && time <= 10 )
    sensitivity = 0.809;
end

if ( time >= 11 && time <= 15 )
    sensitivity = 0.807;
end

if ( time >= 16 && time <= 20 )
    sensitivity = 0.821;
end

if ( time >= 21 && time <= 25 )
    sensitivity = 0.839;
end

if ( time >= 26  )
    sensitivity = 0.838;
end


end

%breastscreening.cancer.gov/data/performance/screening/2009/perf_age_time.h
%tml

%Performance Measures for 1,838,372 Screening Mammography Examinations from
%2004 to 2008 by Age & Time(Months) Since Previous Mammography -- based on
%BCSC data through 2009

