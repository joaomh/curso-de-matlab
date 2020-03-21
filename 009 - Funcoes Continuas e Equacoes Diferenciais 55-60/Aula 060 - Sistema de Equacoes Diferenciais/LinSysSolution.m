%%
%     Curso do canal ExataMenteS
%     Aula 60 - Sistema de Equacoes Diferenciais
%     Se inscreva no canal e nos ajude a crescer <3
%     https://www.youtube.com/channel/UCZyFebN0_gF2yy5fhVhlXtA
%     Professor: Joao Pinheiro
%     Copyright https://github.com/joaomh
%% Using linsolve
% Def Equations of linear system
syms x y z
Eq1 = 2*x  +   y    + z ==   2;
Eq2 =  -x  +   y    - z ==   3;
Eq3 =   x  + 2*y  + 3*z == -10;

[A,B] = equationsToMatrix([Eq1, Eq2, Eq3], [x, y, z]);
SolutionLin = linsolve(A,B);

%% Using solve
% Def Equations of linear system
Eq1 = 2*x  +   y    + z ==   2;
Eq2 =  -x  +   y    - z ==   3;
Eq3 =   x  + 2*y  + 3*z == -10;

% Solution
SolutionSolve = solve([Eq1, Eq2, Eq3], [x, y, z]);
xSol = SolutionSolve.x;
ySol = SolutionSolve.y;
zSol = SolutionSolve.z;

%% ODE System
% Def the Differential Equations
syms u(t) v(t)
ode1 = diff(u) ==  3*u + 4*v;
ode2 = diff(v) == -4*u + 3*v;
odes = [ode1; ode2];

S = dsolve(odes);

uSol(t) = S.u;
vSol(t) = S.v;

[uSol(t), vSol(t)] = dsolve(odes);

% Boundary conditions
Bound_1 = u(0) == 0;
Bound_2 = v(0) == 1;
conds = [Bound_1; Bound_2];

% Solution
[uSol(t), vSol(t)] = dsolve(odes,conds);
fplot(uSol)
hold on
fplot(vSol)
grid on
legend('uSol','vSol','Location','best')
%% Matrix Form
syms x(t) y(t)
A = [1 2; -1 1];
B = [1; t];
Y = [x; y];

odes = diff(Y) == A*Y + B;

[xSol(t), ySol(t)] = dsolve(odes);
xSol(t) = simplify(xSol(t));
ySol(t) = simplify(ySol(t));

C = Y(0) == [2; -1];
[xSol(t), ySol(t)] = dsolve(odes,C);

clf
fplot(ySol)
hold on
fplot(xSol)
grid on
legend('ySol','xSol','Location','best')
