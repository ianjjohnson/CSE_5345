#OAuth is an authorization system where you log in through 3rd party
#(think "sign in through GitHub")

#It is used to allow users to not have to know a ton of logins,
#and also to avoid having to handle authentication on your own

#In practice:
  # -register your app with auth service provider
  # -they need your home page, callback URL, and app name
  # They give you:
    # client ID
    # client secret
  # Write the controller function to handle the callback
  # If the callback is positive, you get a bunch of user info
  # If the callback is negative, you may get a reason
  # If the callback is positive, store the info you need in session
  # To log out, delete the info from the session
