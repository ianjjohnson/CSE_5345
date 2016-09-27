#Closures are "Closed"
#Currying is the process of sending info into a Closure

defmodule Greeter do

  def greet(msg) do
    #The environment in which this function is
    #defined is maintained, since it may be used later
    fn (name)->
      IO.puts "#{msg} #{name}"
    end
  end

  def greet_name(name) do
    fn ->
      IO.puts name
    end
  end

end

f = Greeter.greet "Hello"
f.("class")

g = Greeter.greet "Howdy"
g.("Dave")

e = Greeter.greet_name "Ian"
e.()
