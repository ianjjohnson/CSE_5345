#Processes:
# cheap, isolated
# have a single message queue
# read from mailbox using pattern matching
# can be monitored and/or linked to handle failures
# Goes message-by-message. For each message goes pattern-by-pattern
