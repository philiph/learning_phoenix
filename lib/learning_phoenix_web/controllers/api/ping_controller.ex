defmodule LearningPhoenixWeb.Api.PingController do
  use LearningPhoenixWeb, :controller

  def index(conn, _params) do
    json(conn, %{
      hello: "world"
    })
  end
end
