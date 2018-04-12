a(1). a(2). b(4). b(3).
 
wyp0(F,_) :-
  call(F).
 
wyp1(F,X) :-
  F,
  F =.. [_,X].
 
wyp2(F,X) :-
  % predykat jest prawdziwy, jeżeli F pokrywa się z nazwą termu Pred o arności 1 
  functor(Pred,F,1),
  Pred,
  Pred =.. [_,X].
 
wyp3(F/A,X) :-
  A = 1,
  functor(Pred,F,A),
  Pred,
  Pred =.. [_,X].

% wyp0(a(X),X).
% wyp0(b(X),X).
% 
% wyp1(a(_),X).
% wyp1(b(_),X).
% 
% wyp2(a,X).
% wyp2(b,X).
% 
% wyp3(a/1,X).
% wyp3(b/1,X).