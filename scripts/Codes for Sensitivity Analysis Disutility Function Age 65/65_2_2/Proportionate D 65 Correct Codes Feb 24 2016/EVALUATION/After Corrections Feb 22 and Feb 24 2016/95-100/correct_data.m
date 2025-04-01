function [ ideal_data ] = correct_data( data )


j=1;
    for i=1:length(data)
        if(double(data(i)) == 32 || double(data(i)) == 9)
        else
        corrected_data(j) = data(i);
        j=j+1;
        end
    end
    
m=1;
    for k=1: length(corrected_data)
        ideal_data(m) = corrected_data(k);
        m=m+1;
        ideal_data(m) =' ';
        m=m+1;
    end

end

