function I = gaussian_quadrature(func)
% This fuction resolve a integral using Gaussian quadrature
% sum( A(i) * g(ksi) )
% With              N = 3,
%       k1 = -0.7745967,  A1 = 5/9
%       k2 = 0,           A2 = 8/9
%       k3 = 0.7745967,   A3 = 5/9
% Copyright https://github.com/joaomh

    gauss = [-0.7745967, 5/9;
             0.0,     8/9;
             0.7745967,  5/9
             ];
    ngauss = size(gauss, 1);
    I = 0.0;
    for i = 1:ngauss
        I = I + gauss(i,2) * func( gauss(i,1) ); 
    end
    
end
