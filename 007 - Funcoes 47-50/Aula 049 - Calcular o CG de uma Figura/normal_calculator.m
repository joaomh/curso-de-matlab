function n = normal_calculator(v1,v2)
% This function calculate the normal vector of x(i+1) - x(i) anti clockwise
% n = (d2 - d1 ) / ||d||
% Copyright https://github.com/joaomh
   vnorm = norm(v2-v1,2);
   n = [v2(2)-v1(2);-v2(1)+v1(1)] / vnorm;
   
end
