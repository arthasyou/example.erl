%%%-------------------------------------------------------------------
%% @doc logic public API
%% @end
%%%-------------------------------------------------------------------

-module(logic_app).

-behaviour(application).

-export([start/2, stop/1]).

start(_StartType, _StartArgs) ->
	Reply = logic_sup:start_link(),
	web:start(),
	Reply.

stop(_State) ->
    ok.

%% internal functions
