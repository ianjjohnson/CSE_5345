defmodule ChatClient do

  def start(:send) do
      Node.connect :"chat@10.8.115.185"
      send {:ChatServer, :"chat@10.8.115.185"}, {self, :connect, "Ian"}
      sendMessage
  end

  def start(:rec) do
      Node.connect :"chat@10.8.115.185"
      recMessage
  end

  def sendMessage do
      m = IO.gets "\n"
      send {:ChatServer, :"chat@10.8.115.185"}, {self, :message, m}
      sendMessage
  end

  def recMessage do
      receive do
         {:msg, message} -> IO.puts message
      end
  end


end
