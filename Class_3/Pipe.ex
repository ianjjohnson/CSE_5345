# a = func1(val1)
# b = func2(a)
# c = func3(b, "test")
# d = func4(c)
# THIS IS BAD. This happens a lot in existing languages
# Sometimes turns into func4(func3(func2(func1(val1)), "test"))

#In elixir:
#   val
#   |> func1
#   |> func2
#   |> func3("test")
#   |> func4

#The pipe operator puts the output of the LHS
#into the input of the RHS as first param
#Existing params get moved after what was insterted

#Piping is a macro. It re-writes what we write
#into the dirty form that we're used to

#The main thing that a function works on should
#always be the first parameter

"elixir is cool"
|> String.upcase
|> String.split(" ")
|> Enum.reverse
|> Enum.join(", ")
|> IO.puts

#Programs are Pipelines of Transformations
