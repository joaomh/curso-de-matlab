function [SSe, outParameters ] = fitData(params,x,y)
%fitData fit the data using a normal distribution
%        this method work only some range of amplitude
%        and center of the gaussian
Amp = params(1);
sigma = params(2);
centerX = params(3);

possibleY = Amp*exp( -(x-centerX).^2 / (2*sigma^2) );

SSe = sum( (possibleY-y).^2)  / sum(y.^2);

outParameters = [ Amp sigma centerX ];
 %plot(x,y,'mo',x,possibleY,'k-'); drawnow