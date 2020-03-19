function c = cg_calculator(x)
% This function calculate de center of gravity 
% Using the Volume ( volume_calculator )
% And the Gaussian Quadrature ( gausian_quadrature )

% @(ksi) (parameter_segments(v1,v2,ksi))*((parameter_segments(v1,v2,ksi))'*n)*ds;
% Copyright https://github.com/joaomh
    [ndim, npoints] = size(x);
    npoints = npoints - 1; 
    
    c = zeros(ndim,1);
    
    for i = 1:npoints
        v1 = x(:,i);
        v2 = x(:,i+1);
        
        n = normal_calculator(v1,v2);
        ds = 0.5*norm(v2-v1, 2);
        
        func = @(ksi) (parameter_segments(v1,v2,ksi))*((parameter_segments(v1,v2,ksi))'*n)*ds; 
        c = c + gaussian_quadrature(func);
    end
    
    c = c / ( (ndim+1)*volume_calculator(x) );
end
