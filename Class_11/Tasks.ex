#Tasks are used for running things in the background

task = Task.async(func)
#Creates a process and runs that function in it

result = Task.await(task)
#Wait for the task to finish and then return the result
#Can run across multiple nodes
#Very similar to promises


#Agents to maintain state in background
#Tasks to run jobs in the background
