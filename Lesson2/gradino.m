function x = gradino( t )
% Function that generates a step function
% Nothing to add
    %step = 0.1;
    %step among time values
    %t = -10:step:10;
    % x = values of the function step
    x = zeros(size(t));
    for i = 1:length(t)
        if t(i) > 1
            x(i) = 1;
        elseif t(i) < 1
            x(i) = 0;
		else
			x(i) = 0.5;
        end
    end
end
