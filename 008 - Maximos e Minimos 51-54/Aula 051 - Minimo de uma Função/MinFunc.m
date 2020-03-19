function  [xmin, ymin] =  MinFunc(x,y)
% [xmin, ymin] =  MinFunc(x,y)
% This function returns the XY coordinates of the local minimum 
% The minimum is around vector X
% Input must be a vector
% Copyright https://github.com/joaomh

   [ymin, indx] = min(y);
           xmin = x(indx);
end