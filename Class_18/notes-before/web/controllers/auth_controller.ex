defmodule Notes.AuthController do

  use Notes.Web, :controller

  plug Ueberauth

  alias Ueberauth.Strategy.Helpers

  def callback(conn = %{assigns: %{ueberauth_auth: auth }}, params) do
    current_user = %{
      name:   auth.info.name || auth.info.nickname,
      avatar: auth.info.image || auth.info.urls.avatar_url,
      id:     auth.uid
    }

    conn
    |> put_flash(:info, "Welcome to Notie McNotetaker, #{current_user.name}")
    |> put_session(:current_user, current_user)
    |> redirect(to: "/")
  end

  def delete(conn, params) do
    conn
    |> put_flash(:info, "Logged Out")
    |> configure_session(drop: true)
    |> redirect(to: "/")
  end


end
