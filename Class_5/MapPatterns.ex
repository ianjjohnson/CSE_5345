prof = %{ name: "Dave",
          state: "TX",
          age: 24
        }

%{} = prof #This matches any map
%{name: my_name, state: "TX"} = prof #Matches my_name to "Dave"

IO.inspect my_name

# %{name: my_name, state: "OK"} = prof #Matches error -- prof is in Texas!

greet = fn
  %{name: name, state: "TX"} -> "Howdy #{name}"
  %{name: name}              -> "Hello #{name}"
end

IO.inspect greet.(prof)

#Pattern match equivalent to %{state: "TX"} = prof
state = "TX"
%{state: ^state} = prof

field = :name
%{^field => name} = prof
IO.inspect name

# Important map functions:
# delete (drop)
# fetch
# get
# get_and_update
# keys
# new
# put
# take
# to_list
# update
# values
