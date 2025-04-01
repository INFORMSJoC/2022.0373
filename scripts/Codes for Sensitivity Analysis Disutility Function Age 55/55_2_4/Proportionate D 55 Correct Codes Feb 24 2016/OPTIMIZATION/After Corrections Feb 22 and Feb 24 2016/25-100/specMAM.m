function [ specificity ] = specMAM( time )


if ( time == 1 )
    specificity = 0.876;
end

if ( time >= 2 && time <= 15 )
    specificity = 0.876;
end

if ( time >= 16 && time <= 20 )
    specificity = 0.895;
end

if ( time >= 21 && time <= 25 )
    specificity = 0.894;
end

if ( time >= 26 && time <= 30 )
    specificity = 0.911;
end

if ( time >= 31 && time <= 35 )
    specificity = 0.923;
end

if ( time >= 36 && time <= 40 )
    specificity = 0.927;
end

if ( time >= 41 && time <= 45 )
    specificity = 0.932;
end

if ( time >= 46 && time <= 50 )
    specificity = 0.937;
end

if ( time >= 51 && time <= 55 )
    specificity = 0.939;
end

if ( time >= 56  )
    specificity = 0.942;
end


end

%breastscreening.cancer.gov/data/performance/screening/2009/perf_age_time.h
%tml

%Performance Measures for 1,838,372 Screening Mammography Examinations from
%2004 to 2008 by Age & Time(Months) Since Previous Mammography -- based on
%BCSC data through 2009