# Supervisors can monitor workers and other supervisors

#When supervisors are organized in a hierarchy,
#we call it a supervision tree

#The reason to put workers under the same supervisor is:
  # they share a common lifetime
  # they share a common supervision strategy

#To start an application whose root is a galaxy supervisor:
  # start_link the galaxy supervisor
  # the galaxy supervisor starts its children
  # all the children start their children, *in order*
  # the whole process is synchronous.
  # the galaxy supervisor doesn't return until all is ready

#shutdown the galaxy supervisor:
  # shutdown the main supervisor
  # it shuts down its children
  # all the children stop their children
  # the galaxy shutdown doesn't return until all is down

#Error kernel:
  # How do you protect state?
  # Keep it in a process that is really,
  #     really unlikely to crash
  # Supervise the state process so that if it fails, it stops all dependencies
