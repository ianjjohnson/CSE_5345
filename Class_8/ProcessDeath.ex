#When a process dies, nothing happens by default

#Why it would die:
#runs out of code to execute
#it explicitly exists
#generates a runtime error
#it receives an exit signal

#Signal: really just a message, but they're handled by runtime
#before being put into the mailbox at the very front
#Your code never sees a signal. It's picked up by the runtime

#Monitoring: any process can monitor other processes
#(monitor the state of some independent process. One-way)

#Many processes can monitor one process

#Linking: if a subordinate process crashes, I crash
#(linking the fates of two processes)
#if one process crashes, so does the other.
#if one ends normally, the other does not get killed

#Linking is symmetrical, not one-way like monitoring


pid = spawn_link fn -> :timer.sleep 3000; exit(:boom) end

#could also:
pid = spawn ...
link(pid)
#This could cause trouble, since I'm not linked immediately
#spawn_link >>>>>> spawn then link.


#spawn_monitor does the same as spawn_link but monitors
