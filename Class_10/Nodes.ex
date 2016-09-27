#An Erlang Node is an instance of the Erlang VM (Beam)
#that runs as an OS process.

#Each node has a number of applications in it (chunks of code, libraries, etc.)
#Each node has a number of Erlang processes in it which are executing code

#By default, nodes are anonymous, and you can't talk to them
#Give a node a name, and you can look it up and communicate with it
#Two types: short (sname) and long (name)
#Short name never leaves your network space
#Long name includes fully qualified domain name of the machine it's running on

#You can't have both long and short names on the same machine
#Set shortname using --sname option to iex or elixir

#In Erlang/BEAM, all knowledge/connections are bidirectional

#Nodes can only communicate if they know a shared cookie

#Never put a node on an open port on a public network


#Connecting Nodes
#Nodes connect when you first use Node.ping or Node.connect
#Connection is transitive and symmetrical

#If B and C are connected and A connects to B, A automatically connects to C


#First digit in PID is the node identifier

#10.8.115.185
