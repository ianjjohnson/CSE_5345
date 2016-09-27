#MapSet (set implementation using a map)

set = MapSet.new [:a, :b, :c]
set1 = MapSet.new [:b, :c, :d]

IO.inspect set
IO.inspect set1

IO.inspect MapSet.union set, set1
IO.inspect MapSet.difference set, set1
