# An anonymous function is a piece of code that’s treated as a value
#
# Anonymous function is a piece of data
#
# Function literal:
# 	name = fn (ARGS) -> BODY end
# 	name.(ARGS)
#
# 	no params = fn () -> BODY end
# 	swap = fn [a, b] -> [b, a] end
#
# Pattern matching takes place on every function call
#
# &(EXP)
# EXP is the body of a function
#
# &( &1 + &2)  #THIS HAS NO MULTI-HEADED FORM
# SAME AS:
# fn (a, b) -> a+b end
#
# In Elixir, a function is known based on it’s name and the number of arguments it takes

calc = fn
  ( :+, n1, n2) -> n1+n2
  ( :*, n1, n2) -> n1*n2
  ( :-, n1, n2) -> n1-n2
  ( :/, n1, n2) -> n1/n2
end
#One function, no if or case statements

IO.inspect calc.(:+, 4, 5)
IO.inspect calc.(:*, 3, 4)

add = &(&1+&2)
IO.inspect add.(4, 5)

#NOT allowed:
#add = &('hello') must have parameters
#add = &(&2, &2) must have all params up to max param

greet = &('hello #{&1}')
IO.inspect greet.('ian')

swap = &[&2, &1]
IO.inspect swap.(1,2)

at_least_10 = &(max(10, &1))

IO.inspect at_least_10.(3)
IO.inspect at_least_10.(30)
