%%
%     Curso do canal ExataMenteS
%     Aula 53 - Minimo de uma funcao 2D
%     Se inscreva no canal e nos ajude a crescer <3
%     https://www.youtube.com/channel/UCZyFebN0_gF2yy5fhVhlXtA
%     Professor: Joao Pinheiro
%     Copyright https://github.com/joaomh
%% 

% X and Y 
x = linspace(-10,10,100);
y = linspace(-10,10,100);

% Bsxfun, Complex Surface
z = bsxfun(@plus, x, 1j*y')';
BComplexSurf = sin(z) ./z;
BComplexSurfP = real(BComplexSurf) - abs(BComplexSurf);
fxy = BComplexSurfP;

% Plots
figure(1), clf
surf(x',y',fxy')
shading interp,axis square, rotate3d on
colormap jet
xlabel('X'), ylabel('y'), zlabel('f(x,y)')


% Find the Minimum
MinValue = min( min(fxy) );
[Xmin,Ymin] = find( fxy == MinValue );
fxy(Xmin,Ymin)

% Plot the minimum as a red ball
hold on
plot3(x(Xmin),y(Ymin),fxy(Xmin,Ymin),'ro')

%% Threshold of .01

% Find minima within a threshold
[Xmin,Ymin] = find( fxy < MinValue + 100 );
% Be careful with the size
size( fxy(Xmin,Ymin) )

% We need to convert the values from matrix indices to linear indices
idx = sub2ind( size(fxy), Xmin, Ymin );

% Plot the points
plot3(x(Xmin),y(Ymin),fxy(idx),'ro','markerfacecolor','m','markersize',5)
