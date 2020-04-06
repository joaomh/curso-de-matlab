%%
%     Curso do canal ExataMenteS
%     Aula 64 - Interpolacao de Dados
%     Se inscreva no canal e nos ajude a crescer <3
%     https://www.youtube.com/channel/UCZyFebN0_gF2yy5fhVhlXtA
%     Professor: Joao Pinheiro
%     Copyright https://github.com/joaomh
%%
% Data points
N = 1000;

% Gaussian for smoothing
Sigma = 5;
Gauss = exp( -linspace(-5,5,round(N/10)).^2 / Sigma^2);

% Signal
[ExpSignal,Signal] = deal( conv( randn(N,1),Gauss,'same') );


% Pick some random data points
NoiseReplace = .05; % 5%
NoisePoints = randperm(N);
NoisePoints = NoisePoints( 1:round( N*NoiseReplace ) );

% Loop through time points and make random-length sequences to be NaN
for i = 1:length(NoisePoints)
    
    % Random length sequences
    idxNaN = NoisePoints(i):NoisePoints(i)+ceil(rand*10);
    
    % Set to NaN
    Signal(idxNaN) = NaN;
end

% Using bwconncomp to find NaN 
isNaN = bwconncomp( ~isfinite(Signal) );

% Number of elements in each island
isNaN.N = cellfun(@length, isNaN.PixelIdxList);

% Loop over 'isNaN' and interpolate each one
FilterSignal = Signal;
for i = 1:isNaN.NumObjects
    
    % Find boundary points surrounding NaN
    BoundaryPoints = [ isNaN.PixelIdxList{i}(1)-1 isNaN.PixelIdxList{i}(end)+1 ];
    
    % Skip if out of bounds
    if BoundaryPoints(1) < 1 || BoundaryPoints(2) > N
        continue
    end
    
    % Compute linear interpolation using math (y=mx+b)
    % Or use interp1
    LinInterp = linspace(0,1,isNaN.N(i)+2)*diff(Signal(BoundaryPoints)) + Signal(BoundaryPoints(1));
    
    % Replace NaN data points with new interpolated values
    FilterSignal(BoundaryPoints(1):BoundaryPoints(2)) = LinInterp;
end

error = max( abs(ExpSignal-FilterSignal) );
% Plot
figure(1), clf
plot(FilterSignal)
plot(1:N,[ExpSignal Signal+3 FilterSignal+5], 'linew', 2) % Verticall Stack
legend({'Original';'Measured';'Interpolated'})
zoom on, set(gca, 'ytick', [])
