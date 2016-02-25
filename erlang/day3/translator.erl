% Monitor the translate_service and restart it should it die.

-module(translator).
-export([loop/0, translate/0]).

loop() ->
    receive
        "hola" ->
            io:format("hello~n"),
            loop();
        "casa" ->
            io:format("house~n"),
            loop();
        "blanca" ->
            io:format("white~n"),
            loop();
        _ -> exit("No intiendo.")
    end.

translate() ->
    process_flag(trap_exit, true),
    receive
        new ->
            io:format("Creating and monitoring process.~n"),
            register(translator, spawn_link(fun loop/0)),
            translate();
        {'EXIT', From, Reason} ->
            io:format("The translator ~p died with reason ~p.~n", [From, Reason]),
            io:format(" Restarting. ~n"),
            self() ! new,
            translate()
    end.
