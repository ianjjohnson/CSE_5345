person = %{
  name: %{
    first: "Ia",
    last: "Johnson"
  },
  address: %{
    country: "USA"
  }
}

IO.inspect person
IO.inspect person.name
IO.inspect person.name.first

#To set a nested tuple item value, we need to do the following:
#"This is a wonderful way to go totally and absolutely insane"
#person = %{ person | name: %{ person.name | first: "Ian"} }

#It can be done more easily using put_in
#put_in is a macro that generates what's written above
person = put_in person.name.first, "Ian"
#Could also be (this is used for when you don't know the names
#of the map keys ahead of time)
IO.inspect put_in(person, [:name, :first], "Temp")

IO.inspect person
IO.inspect person.name
IO.inspect person.name.first


#Use maps to:
#Implement lookup tables,
#aggregate data into structures (server state)
#etc.
