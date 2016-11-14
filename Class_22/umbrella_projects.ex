#Umbrella Projects

#Always split nontrivial projects into separate apps
  # - how do we organize the split?
      # a) independent projects, use eachother as deps
      # b) umbrella projects
        # - each application is a subproject
        # - managed as a whole or independently

#Umbrella projects unify management, maintenance, and testing
#Feel more like one big app

#Umbrella project:
  #Looks like a regular project
  #Has no code
  #Has an apps/ directory
    #Inside the apps/ directory, all the apps live
    #Dependencies and build products are all stored at the top level
    
