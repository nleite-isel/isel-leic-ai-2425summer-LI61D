% Probability function variation with parameter T.
function plotProbabilityFunction() 
    %
    % Minimization problem (in max. problems we should interchange fv with fu)
    %
    clc; % Clear screen
    
    % /////////////////////////////////////////
    % SA
    %
    x = -50:1:50;
    T = [15 20 25 30];
    for i = 1 : size(T,2)
        y = prob1(x, T(i));
        plot(x, y, '-');
        hold on;
    end
        
    xlabel('Relative performance')
    ylabel('Probability')
    legend("T = 15", "T = 20", "T = 25", "T = 30");   
    text(0.25, 25, "x = -50:1:50 and y = exp(-x / T)")
    % /////////////////////////////////////////
  
    fv = -50:1:91; % Fv are the neighbour solutions 
    fu = 50;       % Fu is the current solution
    %T = 10;
    %T = 1;
    T = 0.1;
    
    for i = 1 : length(fv)
        y2(i) = p2(fu, fv(i), T);
    end
   % [fv' y1' y2']
   %fprintf('%g\n', y2);   
  
   figure(2)
   plot(fv, y2, '-');
   xlabel('Relative performance')
   ylabel('Probability')
   legend("T = 0.1");   
   text(0.25, 4e8, "fu = 50 and fv = -50:1:91;")

end



% SA
function v = prob1(x, T)
    v = exp(-x / T);
end


function v2 = p2(fu, fv, T)
    v2 = exp(-(fv-fu) / (fu*T));  % Relative difference between fu 
                                  % and fv normalized [0;1]
end







































