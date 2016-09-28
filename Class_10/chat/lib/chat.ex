defmodule Chat do

  def start do
      Node.connect :"dt1@10.8.123.154"
      rec = spawn fn -> recMessage end
      send {ChatServer, :"dt1@10.8.123.154"}, {rec, :connect, "Harambe"}
      sendMessage(rec)
  end

  def sendMessage rec do

      m = IO.gets "You:"
      send {ChatServer, :"dt1@10.8.123.154"}, {rec, :say, m}

      sendMessage rec

  end

  def recMessage do
      receive do
         {:msg, message} -> IO.puts message
      end
      recMessage
  end


end


defmodule ChatServer do

  def start do
    Process.register(self, __MODULE__)
    IO.puts "Server running. Connect to { ChatServer, :#{node} }\n"
    message_loop(%{ clients: %{} })
  end

  def message_loop(state) do

    state = receive do
      { from, :connect, name } ->
        state = add_new_client(state, from, name)
        Process.monitor(from)
        announce(state,  from, "joined the chat")

      { from, :disconnect } ->
        state
        |> announce(from, "left the chat")
        |> remove_client(from)

      { from, :say, message } ->
        announce(state, from, message)

      {:DOWN, _ref, :process, _pid, :normal} ->
        state

      {:DOWN, _ref, :process, pid, reason} ->
        state
        |> announce(pid, "unwillingly left the chat: #{reason}")
        |> remove_client(pid)

      msg ->
        IO.inspect msg

    end

    message_loop(state)
  end

  def add_new_client(state, from, name) do
    put_in state, [:clients, from], name
  end

  def remove_client(state, from) do
    update_in(state.clients, &(Map.drop(&1, [from])))
  end

  def announce(state, from, message) do
    announce_with_name(state, from, state.clients[from], message)
  end

  def announce_with_name(state, from, nil, _message) do
    IO.puts "Ignoring message from #{inspect from}"
    state
  end

  def announce_with_name(state, from, name, message) do
    msg = "#{name}: #{message}"
    IO.puts msg
    state.clients
    |> Enum.reject(fn {pid, _name} -> pid == from end)
    |> Enum.each(fn {pid, _name} -> send pid, {:msg, msg} end)
    state
  end

end
