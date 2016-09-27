#Parallel: two processors, program running on both at same time
#Concurrency: could be two threads running on one chip

#All parallel programs are concurrent, not vise-versa

#Shared state -> bugs
#Need to eliminate concurrent access of shared state

#Semaphore -- data has a flag on it and you can only
#read or write when you have the flag
#Semaphores cause deadlocks. They're very difficult to 'get right'
#Have acquire and release (p and v)

#Monitors are a refinement of semaphores with two new operations
#which allow for temporary loss/gain of control of memory

#Futures and promises:
#a promise is a way of wrapping a function call so that
#it runs in the background.
#Then we can 'resolve' the promise later, which causes us to wait
#for the result

#Actor model: (what Elixir / Erlang use)
#Actor can send/receive messages, update its own state, and create new actors
#There is no way for anyone else to update an actor's state

#An actor is a process
#Processes have unique IDs (pid)
#Current pid is accessible using self()
#Every process has a mailbox
#Use send to add a message to a process' mailbox
#Process explicitly reads a message using receive
