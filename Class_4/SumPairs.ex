defmodule Sum do

  def sum_pairs([h1, h2 | t]), do: [ h1+h2 | sum_pairs(t)]
  def sum_pairs([]),           do: []

end


IO.inspect Sum.sum_pairs([1, 2])

#Error checking generally doesn't occur in Erlang code
#When an error occurs, it's considered acceptable to crash
#It's important that when input is bad, a crash occurs

#This function should NOT be designed to validate input

defmodule Class do
  def double([]),    do: []
  def double([h|t]), do: [h*2 | double(t)]

  def add_one([]),    do: []
  def add_one([h|t]), do: [h+1 | add_one(t)]
end

IO.inspect Class.double [1, 2, 3, 4]
IO.inspect Class.add_one [1, 2, 3, 4]
