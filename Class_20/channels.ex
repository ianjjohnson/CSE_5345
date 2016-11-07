#HTTP is, by nature, stateless on its own
#Web Sockets:
  #Allow for a stateful connection between client and server
  #A TCP connection is made between the two after HTTP ping/pong
  #Opening web sockets can be very expensive

  #No need to recover state
  #Multiple conversations over a single socket

  #Easier to code
  #Potential to broadcast

#Messages (called events) are sent back and forth

#Channel names and event names are strings
#Channel name is (by convention) "topic:subtopic"
#Event names are not structured

#State:
  #The socket is kept open between Messages
  #The server maintains a struct on associated with each open socket
  #This struct can be used by apps to store state
