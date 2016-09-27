#Last time: processes and actors

#Code can recursively call itself to maintain state.
#It can pass state to itself


#Tail call elimination -- in functional languages
#If a function calls itself as the very last thing it does,
#then all it does is jump back to the beginning instead of
#making an actual recursive call. It updates the values of parameters
#and starts over
def func(state) do

    # ...

    func(state+1)
    # 1 + func(state+1) is NOT a tail recursive call

    # if true do
    #    func(state+1)
    # else
    #    func(state-1)
    # end
    # The above IS tail call recursive
end

#Sometimes you will hold onto a separate process which holds state
#so that if you crash you can re-load it
defmodule M do

#This will infinitely loop and listen to messages
def oa(location) do
  receive
  # ...
  location = %{ location | person => :in_building}
  send reply
  oa(location)
end

end

spawn M, :oa, [ %{} ]
