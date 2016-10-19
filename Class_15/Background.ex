#Introduction to Phoenix

#GUI Programming doesn't play well with original batch processing strategies:
#Some solutions:
  #Event-based Programming
  #Massive frameworks for event-based programming
  #The MVC (Model View Controller) system

#Event-based programming
  #Wait for any input, process input, wait again
  #Works, but difficult (lots of flags, etc)

#Frameworks
  #With framework-based development, the framework is the starting point of your code
  #so it is the starting point, and it manages everything and just asks you for how
  #to deal with individual event-based
  #In a framework, your code is just a series of callbacks

#Model-View-Controller
  #Separation of concerns:
    #Model: the logic and your state
    #View: syncs the UI to the model's state
    #Controller: orchestrates the process

#A true web architecture is stateless.
#The server has no memory of previous requests
#We maintain no session at the HTTP level.

#AJAX:
  #Library that ran in a browser that opened a back-channel to a server

#Rails: used to be the best way, now it's turned into a huge monster
