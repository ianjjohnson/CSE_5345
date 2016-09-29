#Tasks and Agents:

#We want to keep data in the backgroud, or run tasks in the background

#Task and Agent are both library modules

#An agent is designed to maintain and manipulate state in the background
#A task is designed to perform background processing

#Agent:
agent = Agent.start(func) #(or start_link)
#the function is called inside the agent. The result of the function
#becomes the initial state of the agent
result = Agent.get(agent, func)
#runs the result of running func in the agent passing it state
result = Agent.update(agent, func)
#Similar to get, but it also mutates the state in the agent
result = Agent.get_and_update(agent, func)

{:ok, agent} = Agent.start(fn -> 0 end)
Agent.update(agent, &(&1+1))
Agent.update(agent, &(&1+1))

Agent.get(agent, &(&1))

#Agents should be wrapped in modules
