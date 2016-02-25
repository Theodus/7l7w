% Consider a list of keyword-value tuples, such as [{erlang, "a functional
% language"}, {ruby, "an OO language"}]. Write a function that accepts
% the list and a keyword and returns the associated value for
% the keyword.

-module(tuples).
-export([val/2]).

val(List, Key) -> 
    Values = [ V || {K, V} <- List, (K == Key) ],
    case Values of
        [ FirstValue | _ ] ->
            FirstValue;
        [] ->
            false
    end.
