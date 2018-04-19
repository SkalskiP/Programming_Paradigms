% Napisać operator o priorytecie 80, który będzie robił tak, że będzie działało sokrates jest
% czlowiek zamiast jest(czlowiek,sokrates) , jest to ten operator.

% jest(sokrates, czlowiek).

:- op(80,yfx,jest).
jest(X, Y).