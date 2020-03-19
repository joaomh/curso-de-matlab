function x = parameter_segments(v1, v2, ksi)
% The image of this function is the segment of x(i) to x(i+1)
% x(i)(1-ksi)/2 + x(i+1)(1+ksi)/2
% ksi = [-1,1]
% Copyright https://github.com/joaomh

    x = 0.5*(1-ksi)*v1 + 0.5*(1+ksi)*v2; 
    
end
