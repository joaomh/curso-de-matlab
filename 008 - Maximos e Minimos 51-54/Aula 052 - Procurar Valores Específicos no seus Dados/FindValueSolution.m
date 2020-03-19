%%
%     Curso do canal ExataMenteS
%     Aula 52 - Procurar Valores no seus Dados
%     Se inscreva no canal e nos ajude a crescer <3
%     https://www.youtube.com/channel/UCZyFebN0_gF2yy5fhVhlXtA
%     Professor: Joao Pinheiro
%     Copyright https://github.com/joaomh
%% 

% Exact match

% The data
Data = 1:10;

% Boolean
FindNumber = Data == 7;

% Nonzero values
Idx3 = find( FindNumber );

% Check
Data( Idx3 );

%% Close but not exact

NumSearch = 7;

Data = logspace( log10(1),log10(10),100 );

% Check
find( Data == NumSearch )

% Plots
figure(1), clf
plot(Data,'o-')
plot(Data-NumSearch,'o-')
plot(abs(Data-NumSearch),'o-')

% Find the minimum
[val,idx] = min( abs(Data-NumSearch) );

% Using dsearchn
idx = dsearchn(Data',NumSearch);

% Plots
hold on
plot(idx,Data(idx),'ro','markersize',5,'markerfacecolor','r')

figure(2), clf
plot(Data,'bo')
hold on
plot(idx,Data(idx),'ro','markersize',5,'markerfacecolor','r')

%% Matrix

% Matrix Sizes
m = 7;
n = 3;

% Reshape into a matrix
matr = reshape( Data(1:m*n) ,[m n]);

% Vectorizing
idx = dsearchn(matr(:), NumSearch);

% Convert vector to matrix indices
[xi,yi] = ind2sub(size(matr),idx);

% Value
matr(xi,yi)

