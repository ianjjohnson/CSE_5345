defmodule Canvas do

  def grade(x) when x > 100, do: :error
  def grade(x) when x < 0, do: :error

  def grade(x) do
    case div(x,10) do
      10 -> "A"
      9  -> "A"
      8  -> "B"
      7  -> "C"
      6  -> "C"
      5  -> "D"
      _  -> "F"
    end
  end

end
