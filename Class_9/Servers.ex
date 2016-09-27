#Convention is to have both API and Implementation in same module

defmodule OA do

#####
#API#
#####

#Public methods
def new do
  spawn __MODULE__, :handle_message, [ %{location_of: %{} } ]
end

################
#IMPLEMENTATION#
################

#Private methods
def handle_message(state) do
  receive do
    #....
    handle_message(state)
  end
end

end

#The public API runs in the same process as the implementation
#The public methods send messages to themselves




#Servers:
# * receive a message
# * pattern match content
# * process message, update state
# * possibly send a reply
# * call themselves with updated state
