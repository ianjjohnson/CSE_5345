defmodule Class do

    #def reduce([x], _func),  do: x
    #def reduce([h|t], func), do: func.(reduce(t, func), h)

    def reduce([], value, _func)    do
      value
    end
    def reduce([h|t], value, func)  do
      new_value = func.(h, value)
      reduce(t, new_value, func)
    end

    def sum(list) do
      reduce(list, 0 ,&(&1+&2))
    end

    def len(list) do
      reduce(list, 0, fn _element, value -> 1 + value end)
    end

    def reverse(list) do
      reduce(list, [], &[&1|&2])
    end

    def map(list, func) do
      reduce(list, [], &[ func.(&1) | &2]) |> reverse
    end

    def include_if_positive(value, result) do
        cond do
          value > 0 ->
            [value | result]
          true ->
            result
        end
    end

    def filter(list, filter_fn) do
      reduce(list, [], filter_fn) |> reverse
    end
end

IO.inspect Class.reverse([1, 2, 3])
IO.inspect Class.sum([1, 2, 3])
IO.inspect Class.len([1, 2, 3])
IO.inspect Class.map([1, 2, 3], &(&1*8))
IO.inspect Class.filter([1, -5, 2, 3, -4, -1], &Class.include_if_positive/2)

#Reduce turns a list into a value

#Inputs: list, function
#output: value

#Invariant: something that doesn't change
