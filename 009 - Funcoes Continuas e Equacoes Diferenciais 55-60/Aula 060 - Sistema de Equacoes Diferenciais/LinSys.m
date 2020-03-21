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



%% Using solve
% Def Equations of linear system
Eq1 = 2*x  +   y    + z ==   2;
Eq2 =  -x  +   y    - z ==   3;
Eq3 =   x  + 2*y  + 3*z == -10;

% Solution


%% ODE System
% Def the Differential Equations
syms u(t) v(t)
ode1 = diff(u) ==  3*u + 4*v;
ode2 = diff(v) == -4*u + 3*v;




% Boundary conditions
Bound_1 = u(0) == 0;
Bound_2 = v(0) == 1;
conds = [Bound_1; Bound_2];

% Solution

fplot(uSol)
hold on
fplot(vSol)
grid on
legend('uSol','vSol','Location','best')
%% Matrix Form
syms x(t) y(t)






clf
fplot(ySol)
hold on
fplot(xSol)
grid on
legend('ySol','xSol','Location','best')
