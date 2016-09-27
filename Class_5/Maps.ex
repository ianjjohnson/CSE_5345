#A function always executes code
#A map does not execute code, it just uses a data structure
#In Elixir, a Map is a primitive type. Often dicts or HashMaps, etc.

#Map literal:
#my_map = %{key1 => value1, key2 => value2}
state_name = %{"TX" => "Texas", "MD" => "Maryland"}

#Shortcut for ":atom =>" is "atom:"
%{ :name => "Dave", :state => "TX", :age => 24}


prof = %{ name: "Dave",
          state: "TX",
          age: 24
        }

IO.inspect state_name
IO.inspect state_name["TX"]
IO.inspect state_name["OK"]

IO.inspect prof[:name]
IO.inspect prof.state
IO.inspect state_name[prof.state]
