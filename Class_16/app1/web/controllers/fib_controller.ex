defmodule App1.FibController do

  use App1.Web, :controller



  def index(conn, %{ "n" => n}) do

    result = n |> String.to_integer |> App1.Fib.fib

    render(conn, "index.html", result: result, n: n)

  end

end
