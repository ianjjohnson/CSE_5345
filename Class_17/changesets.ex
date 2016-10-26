# CRUD - Create, Read, Update, Delete
# When we use these operations, we transform the database

# What gets changed is a "changeset"
# A changeset is a data structure that reflects a transformation

#Using a changeset

#Create changeset:
  #cast(model, new_values, allowed_fields)
#Apply to database:
  #Repo.insert(changeset) OR
  #Repo.update(changeset)

#Update a changeset:
  #cast(changeset, new_values, allowed_fields)
  #validate_xxx(changeset,...)
  #add_error(changeset, ...)
  #merge(changeset1, changeset2)
  #xxx_constrain(changeset, ...)
#Each of these functions returns a changeset, so they can be pipelined
