defmodule Demo do

  #The top definition only runs when the guard clause
  #(when a < b) is correct
  def order({a, b}) when a < b, do: {a,b}
  def order({a, b}),            do: {b,a}

end

IO.inspect Demo.order {1,2}
IO.inspect Demo.order {6,3}


#Guard clauses are limited to basic arithmetic, and/or,
#is_integer (or is_anyType). This is essentially everything
