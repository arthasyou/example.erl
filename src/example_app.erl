%%%-------------------------------------------------------------------
%% @doc logic public API
%% @end
%%%-------------------------------------------------------------------

-module(example_app).

-behaviour(application).

-export([start/2, stop/1]).

start(_StartType, _StartArgs) ->
	Reply = example_sup:start_link(),
	web:start(),
	Reply.

stop(_State) ->
    ok.

%% internal functions
