defmodule Notes.IpLogger do
  import Plug.Conn
  require Logger

  def init(options), do: options

  def call(conn, _options) do
    #Logger.info (Kernel.to_string(conn.remote_ip))
    #Logger.info(IO.inspect conn.remote_ip)
    Logger.info Enum.join((Tuple.to_list conn.remote_ip),".")
    conn
  end

end
