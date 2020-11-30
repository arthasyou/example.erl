-module(main_internal).

%% ===========================API============================
-export([init/1, terminate/1]).
-export([send_data/3, send_error/3]).

init(ID) ->
	%% TODO: Write your code here
	ok.

terminate(ID) ->
	%% TODO: Write your code here
	ok.

%% response data to client
send_data(SockPID, Cmd, Data) ->
	Bin = packet:pack_data({Cmd, Data}),
	tcp_response:send(SockPID, Bin).

%% response error code to client
send_error(SockPID, Cmd, ErrorCode) ->
	Bin = packet:pack_error({Cmd, ErrorCode}),
	tcp_response:send(SockPID, Bin).


	


