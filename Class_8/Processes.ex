spawn fn -> IO.puts "Hello from #{inspect self}" end

1..10 |> Enum.map(&spawn(fn -> IO.puts &1 end))


send self, "Hello, World"
Process.info(self)[:messages]

send self, "Goodbye, World"
Process.info(self)[:messages]

#function "flush" prints and deletes all messages from mailbox

flush

Process.info(self)[:messages]


#This receives a message. This will hang because empty mailbox
receive do

end


#to timeout:
receive do
  msg -> msg
after 5000 -> IO.puts "timeout"
end
