% Write a function that uses recursion to return the number of words in a string.

-module(words).
-export([count/1]).

count(Str) -> length(string:tokens(Str, " ")).
