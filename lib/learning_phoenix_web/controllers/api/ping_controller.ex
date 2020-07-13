defmodule LearningPhoenixWeb.Api.PingController do
  use LearningPhoenixWeb, :controller

  def index(conn, _params) do
    conn
    |> put_status(200)
    |> put_resp_header("content-type", "application/json")
    |> json(%{
      hello: "world"
    })
  end
end
