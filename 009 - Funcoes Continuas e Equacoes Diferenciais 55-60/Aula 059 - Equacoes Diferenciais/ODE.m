%%
%     Curso do canal ExataMenteS
%     Aula 59 - Equacoes Diferenciais
%     Se inscreva no canal e nos ajude a crescer <3
%     https://www.youtube.com/channel/UCZyFebN0_gF2yy5fhVhlXtA
%     Professor: Joao Pinheiro
%     Copyright https://github.com/joaomh
%%
% Syms


% General solution


% Particular solution, given a specific initial condition


% Plots curves
[Ut,Uy] = meshgrid(linspace(-2,4,40),linspace(-2,4,40));
Solution = 

% Now divide by length for normalized vectors
figure(2), clf, hold on
L = sqrt(1 + Solution.^2);
h = quiver(Ut,Uy,1./L,Solution./L,.5);
set(h,'linew',2,'color',[.8 .8 .8])

% Initial values for the solution y at t0
InitialValues = [ 2 1 .5 .25 ];

% Draw solution curves for those initial values
AllSolutions = zeros(size(InitialValues));
for i = 1:length(InitialValues)
    
    AllSolutions(i) = 
    
end

axis([min(Ut(:)) max(Ut(:)) min(Uy(:)) max(Uy(:))])
set(AllSolutions,'linew',3)