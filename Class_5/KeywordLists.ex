# Keywords (used for keyword params to functions)

# These are equivalent
IO.inspect "hello", pretty: true, width: 40
IO.inspect("hello", [pretty: true, width: 40])

# These are equivalent
list = [pretty: true, width: 40]
list = [{:pretty, true}, {:width, 40}]

IO.inspect("hello", [{:pretty, true},{:width, 40}])

#Keyword lists are used for optional function parameters
#Accessing elements is used with []
IO.inspect list[:pretty]
IO.inspect list[:nope] # Returns nil
