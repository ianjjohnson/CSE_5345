defmodule Notes.PageController do
  use Notes.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
