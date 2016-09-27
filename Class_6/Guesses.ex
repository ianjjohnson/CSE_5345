# Given a range low... high
# Guess the number in the middle
# If correct, done
# Else adjust range
# Repeat from step 2


# In non-functional lang, this involves mutable global state

defmodule Countdown do

  def from(0), do: IO.puts "Boom"
  def from(n) when n > 0 do
      IO.puts n
      from n-1
  end

end

Countdown.from 10

# Functional programming:
# NO global state
# State is always explicit, and on the stack

defmodule Guess do

  def play(min, max) when min < max do
    IO.puts "Think of a number between #{min} and #{max}"
    guess(min, max, 0)
  end

  def guess(min, max, moves) do
    guess = div(min + max, 2)
    IO.gets("Is it #{guess}? [ylh]:  ")
    |> String.trim
    |> String.downcase
    |> handle_answer(guess, min, max, moves+1)
  end

  def handle_answer("h", guess, _min, max, moves), do: guess(guess+1, max, moves)
  def handle_answer("l", guess, min, _max, moves), do: guess(min, guess-1, moves)
  def handle_answer("y", _guess, _min, _max, moves), do: IO.puts "I won in #{moves} moves"


end

Guess.play(1,100)
