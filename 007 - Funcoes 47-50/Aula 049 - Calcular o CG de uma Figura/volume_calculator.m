function v = volume_calculator(x)
% This funciton calculate the Volume in 2D 
% Using Gaussian Quadrature
% The volume in 2D is the surface integral of 1dx
% To calculate the volume, we need to calculate the normal vector
%    ksi     segment of x(i) to x(i+1)  , normal vector
%  @(ksi) (parameter_segments(v1,v2,ksi))' * n*ds; 
% Copyright https://github.com/joaomh
    [ndim, npoints] = size(x);
    npoints = npoints - 1; 
    
    v = 0.0;
    
    for i = 1:npoints
        v1 = x(:,i);
        v2 = x(:,i+1);
        
        % Normal vector
        n = normal_calculator(v1,v2);
        ds = 0.5*norm(v2-v1, 2);
        
        % Volume
        func = @(ksi) (parameter_segments(v1,v2,ksi))' * n*ds; 
        v = v + gaussian_quadrature(func);
    end
    
    v = v / ndim;
        
end
