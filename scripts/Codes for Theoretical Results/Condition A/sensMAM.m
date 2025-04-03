function [ sensitivity ] = sensMAM( time )

if ( time == 1 )
    sensitivity = 0.526;
end

if ( time >= 2 && time <= 15 )
    sensitivity = 0.526;
end

if ( time >= 16 && time <= 20 )
    sensitivity = 0.694;
end

if ( time >= 21 && time <= 25 )
    sensitivity = 0.761;
end

if ( time >= 26 && time <= 30 )
    sensitivity = 0.779;
end

if ( time >= 31 && time <= 35 )
    sensitivity = 0.815;
end

if ( time >= 36 && time <= 40 )
    sensitivity = 0.809;
end

if ( time >= 41 && time <= 45 )
    sensitivity = 0.807;
end

if ( time >= 46 && time <= 50 )
    sensitivity = 0.821;
end

if ( time >= 51 && time <= 55 )
    sensitivity = 0.839;
end

if ( time >= 56  )
    sensitivity = 0.838;
end


end

%breastscreening.cancer.gov/data/performance/screening/2009/perf_age_time.h
%tml

%Performance Measures for 1,838,372 Screening Mammography Examinations from
%2004 to 2008 by Age & Time(Months) Since Previous Mammography -- based on
%BCSC data through 2009
