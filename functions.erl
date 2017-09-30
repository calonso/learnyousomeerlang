-module(functions).
-compile(export_all).

head([H|_]) -> H.

second([_,H|_]) -> H.

same(X,X) -> true;
same(_,_) -> false.

valid_time({ Date = {D,M,Y}, Time = {H,Mm,S}}) ->
  io:format("The Date tuple ~p says today is: ~p/~p/~p,~n", [Date, D, M, Y]),
  io:format("The Time tuple ~p indicates: ~p:~p:~p.~n", [Time, H, Mm, S]);
valid_time(_) ->
  io:format("Stop feeding wrong data!~n").


