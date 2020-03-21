%%
%     Curso do canal ExataMenteS
%     Aula 59 - Equacoes Diferenciais
%     Se inscreva no canal e nos ajude a crescer <3
%     https://www.youtube.com/channel/UCZyFebN0_gF2yy5fhVhlXtA
%     Professor: Joao Pinheiro
%     Copyright https://github.com/joaomh
%%
% Syms
syms y(t)
ode = diff(y) == -y;

% General solution
dsolve( ode )

% Particular solution, given a specific initial condition
dsolve( ode,y(0)==2 );

% Plots curves
[Ut Uv] = meshgrid(linspace(-2,4,40));
Solution = exp(-Ut); 

% Now divide by length for normalized vectors
figure(2), clf, hold on
L = sqrt(1 + Solution.^2);
h = quiver(Ut,Uv,1./L,Solution./L,.5);
set(h,'linew',2,'color',[.8 .8 .8])

% Initial values for the solution y at t0
InitialValues = [ 2 1 .5 .25 ];

% Draw solution curves for those initial values
AllSolutions = zeros(size(InitialValues));
for i = 1:length(InitialValues)
    
    AllSolutions(i) = fplot( dsolve(ode,y(0)==InitialValues(i)),[min(Ut(:)) max(Ut(:))]);
    
end

axis([min(Ut(:)) max(Ut(:)) min(Uv(:)) max(Uv(:))])
set(AllSolutions,'linew',3)

%% Second-Order ODE
% Syms
syms y(x)
dy = diff(y);
ode = diff(y,x,2) == cos(2*x) - y;

% Boundary conditions
Bound_1 = y(0)   == 1;
Bound_2 = dy(0)  == 0;
conds = [Bound_1 Bound_2];

% Solution
ySol(x) = dsolve(ode,conds);
ySol    = simplify(ySol);
