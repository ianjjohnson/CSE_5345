#Supervisor: process that monitors other processes
#Looks for failures, handles restarts
#Key to creating process architectures
#Key to resiliency
#Key to stopping and starting apps

#Supervisor has a set of child processes (all run independently)
#Supervisor params to start child: module, args, startup/shutdown options

#Restart options:
#What to do if the child dies
#:permanent - the child process is always restarted
#:temporary - the child process is never restarted
#:transient - The child process is only restarted if it crashed

#Supervision options:
#:strategy - below
#:max_restarts and :max_seconds - only allow certain number of restarts per time
#:name - register name for supervisor

#Supervision Strategies:
#:one_for_one - children are independent of eachother
#:one_for_all - if a child terminates, all are restarted
#:rest_for_one - if a child terminates, all children following it in the list are stopped
#   and then all of the terminated children are restarted

#Shutdown option:
#:brutal_kill - the child process is unconditionally terminated
#any integer n - the supervisor tells the child to terminate within n milliseconds
#:infinity - tell the child to shutdown and wait for it to shutdown

#--sup flag for supervision
