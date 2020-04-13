%%
%     Curso do canal ExataMenteS
%     Aula 89 - Regressao Linear
%     Se inscreva no canal e nos ajude a crescer <3
%     https://www.youtube.com/channel/UCZyFebN0_gF2yy5fhVhlXtA
%     Professor: Joao Pinheiro
%     Copyright https://github.com/joaomh
%%

% Triangle distribution
a = .2;
c = .6;
b = .9;
x = rand(1,10000);

Fc = ( c - a ) / ( b - a );

y(x<Fc) = a + sqrt(x(x<Fc) * (b - a) * (c - a)); 
y(x>Fc) = b - sqrt((1 - x(x>Fc)) * (b - a) * (b - c));


% Convert x and y into a distribution
[y,x] = hist(y,100);
y = y ./ sum(y);

% Initial point
[~,initB] = min(abs( x - mean(x) ));

% Fit the model
funch = @(initB) fitLinear(initB,x,y);
figure(2), clf
fminsearch(funch,initB);
