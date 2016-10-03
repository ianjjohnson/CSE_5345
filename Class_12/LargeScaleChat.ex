#How would you implement a large-scale Chat Server outside of Elixir?
#100,000 chatters and 20,000+ sessions

#You'd have:
#Chat endpoint
#Connection between endpoints
#Call setup
#These endpoints would all have to run in parallel and they'd have to share state
#Shared state would have to be shared between multiple systems with latency, etc.

#This becomes large, monolithic, and incredibly difficult to maintain and even build


#Elixir model:
#Make everything a process. The endpoints, the connections, and the data backend
#Downside: lots and lots of processes (potentially millions)
