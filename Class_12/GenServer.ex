#GenServer
#Generic Server Framework
#Part of OTP
#You provide 1 to 7 callback functions. It does the rest
#init, terminate, handle_call, handle_cast, handle_info
#also: code_change, format_status

#This handles all of the looping, recursion, etc. for you.
#You just need to define a subset of functionalities

#Init: setup state
#Terminate: not used often
#Handle_<something>: Elixir splits up input messages into 1 of 3 types
#handle_call: Sender expects a response
#handle_cast: Sender sents a 1-way message
#handle_info: Messages sent by Erlang runtime, not by users

#state is passed between the callbacks
#initial state is passed to init when you start the server via args
#handle_call is used when you send a response
#handle_cast is used when you don't send a response
