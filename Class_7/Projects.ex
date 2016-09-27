# Project Structure
# Project in Elixir is more like a package than a project


#filenames all lower case
#module names are UpperCamelCase

#Mix is a project automation tool
#  Can be used for testing, running code and tests,
#  managing dependencies, packaging for release, etc.

#Node: a self-contained environment for running Erland
#and elixir code
#runs in an OS process, can have >1 on a machine
#nodes have names, and can communicate

#BEAM: The Erlang VM. Supports the code running in node

#Application: A reusable chunk of code that is included
#when your code runs. Your code is 1+ applications
#libraries are applications. Anything that can run
#independently is an application

#Process: A BEAM process is an independent thread
#of execution, isolated from all other processes.
#Much lighter weight than a native OS process.
#Millions can be run at once

#iex -S mix: loads your application and then runs iex
#c filename or r ModuleName to recompile code

#mix run -- runs app from designated start function
#mix run filename.ex -- runs given filename
#mix run -e "some_elixir_code" -- runs given code in context of your application

#mix test -- compiles out-of-date code and runs tests
#mix test test/filename.exs -- runs tests in a given file
