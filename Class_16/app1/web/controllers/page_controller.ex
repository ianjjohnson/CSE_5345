defmodule App1.PageController do

  use App1.Web, :controller

  def index(conn, params) do

    visits = (get_session(conn, "visits") || 0) + 1

    conn
    |> put_session("visits", visits)
    |> render("index.html",
           name: params["name"] || "anonymous user",
           visits: visits)

  end
end
