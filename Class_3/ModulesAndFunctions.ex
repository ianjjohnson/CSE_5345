defmodule Greeting do

  #I couldn't put in a new say_hello_to/1
  #here, it would have to be with the other two

  #Unrelated to the below functions
  #because this one has two params
  def say_hello_to(name, state) do
      IO.puts "Hello to #{name} in #{state}"
  end

  def say_hello_to("Dave") do
      IO.puts "Howdy, Dave!"
  end

  def say_hello_to(name) do
      IO.puts "Hello, #{name}!"
  end

end


Greeting.say_hello_to "Ian"
Greeting.say_hello_to "Dave"
Greeting.say_hello_to "Colin", "South Carolina"

defmodule Calc do

    #either way works, first is shorter
    #he likes code that lines up
    def eval(:+, a, b), do: a+b
    def eval(:-, a, b), do: a-b
    def eval(:*, a, b), do: a*b
    def eval(:/, a, b) do
        a/b
    end

end

IO.inspect Calc.eval(:/, 100, 3)

defmodule Series do

    #Traditional form
    def fib_bad(n) do
      case n do
         0 -> 0
         1 -> 1
         n -> fib(n-2) + fib(n-1)
      end
    end

    #Elixir form
    def fib(0), do: 0
    def fib(1), do: 1
    def fib(n), do: fib(n-2) + fib(n-1)

    #The two are exactly identical in terms of runtime
    #They compile to the exact same thing
    #Recursive functions should be done in the Elixir form


end

IO.inspect Series.fib_bad(10)
IO.inspect Series.fib(10)
