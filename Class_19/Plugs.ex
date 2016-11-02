#Authentication
# Only access /notes if logged in
# Logged in if get_session(:current_user) is not nil

#Plug: library and conventions for modules that transform
#      a connection from request to response

#Pipeline: series of plugs

#Plug is very formalized: you can only pass a connection
#and some arguments to a plug

#Endpoint: where Phoenix translates a request to a connection

#Sequence of plugs depends on request -- not static

#Two kinds of plugs:
  #Module plug:
    #A module that defines two functions:
    # -init(options) --> returns the options, transformed
    # -call(conn, options) --> you get the conn and your options
    #                      --> you manipulate the conn and return it
  #Function plug:
    #Used when you want a plug for just a single module

  #plug :functionName <guardClause>
