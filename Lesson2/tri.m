function x = tri( t )
% Function that generates a tri function
% Nothing to add
    %step = 0.1;
    %step among time values
    %t = -10:step:10;
    % x = values of the function tri
    x = zeros(size(t));
    for i = 1:length(t)
		value = abs(t(i));
        if value < 1
            x(i) = 1 - value;
        elseif value >= 1
            x(i) = 0;
        end
    end
end
