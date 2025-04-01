function [ specificity ] = specMAM( time )





if ( time >= 1 && time <= 5 )
    specificity = 0.932;
end

if ( time >= 6 && time <= 10 )
    specificity = 0.937;
end

if ( time >= 11 && time <= 15 )
    specificity = 0.939;
end

if ( time >= 16  )
    specificity = 0.942;
end


end

%breastscreening.cancer.gov/data/performance/screening/2009/perf_age_time.h
%tml

%Performance Measures for 1,838,372 Screening Mammography Examinations from
%2004 to 2008 by Age & Time(Months) Since Previous Mammography -- based on
%BCSC data through 2009