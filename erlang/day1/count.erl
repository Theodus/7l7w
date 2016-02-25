% Write a function that uses recursion to count to ten

-module(count).
-export([ten/0]).

ten() -> count(1).

count(10) ->
    io:format("10~n");
count(N) ->
    io:fwrite("~B~n", [N]),
    count(N + 1).
