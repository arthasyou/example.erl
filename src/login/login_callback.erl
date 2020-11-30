-module(login_callback).

-include("all_pb.hrl").

%% ===========================API============================
-export([login/1]).

login(ID) ->
	case main:start_child(ID, self()) of
		{ok, _PID} ->
			{ok, #m_1001_toc{}};
		_Error ->
			%% TODO: Handle Error
			{error, 1}
	end.



%% ===========================Internal============================

