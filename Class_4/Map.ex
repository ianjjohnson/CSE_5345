defmodule Class do

    def map([], _func),   do: []
    def map([h|t], func), do: [func.(h) | map(t, func)]

    def add_one(list), do: map(list, &(&1 + 1))
    def double(list),  do: map(list, &(&1 * 2))

end

IO.inspect Class.add_one([1, 2, 3])
IO.inspect Class.double([1, 2, 3])

#Map applies a function to every item in a list
#Inputs: list, function
# list = [] --> done
# list = [h|t] --> [func.(h) | recurse_(t)]
#Output: list
