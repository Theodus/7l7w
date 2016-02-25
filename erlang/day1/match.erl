% Write a function that uses matching to selectively print “success”
% or “error: message” given input of the form {error, Message} or success.

-module(match).
-export([error/1]).

error("success") -> "success";
error({error, Message}) -> io:fwrite("error: ~s~n", [Message]).
