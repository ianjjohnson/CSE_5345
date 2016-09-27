#More formal maps
#Predefined set of keys
#Keys must be atoms
#Must be accessed using . form, not [] form

#Must define struct inside module. Module becomes structure
defmodule Car do
  defstruct(manufacturer: "",
            year: 2016,
            color: "white"
  )
end

defmodule D do

    IO.inspect %Car{manufacturer: "Ford"}
    IO.inspect %Car{year: 2012}
    # %Car{yeaar: 2011} --> THIS GIVES A KEY ERROR.

    c = %Car{manufacturer: "Ford", year: 1997}
    IO.puts "#{c.year} #{c.manufacturer}"

    c1 = %Car{ c | year: 2010}
    IO.puts "#{c1.year} #{c1.manufacturer}"

    c2 = put_in c.year, 2016
    IO.puts "#{c2.year} #{c2.manufacturer}"

    # c1[year] is not allowed!

    # Pattern match
    %Car{year: year} = c2
    IO.puts year

    # %Car{} = c1 matches any car c1
end
