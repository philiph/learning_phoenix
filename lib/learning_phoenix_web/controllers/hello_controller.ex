defmodule LearningPhoenixWeb.HelloController do
  use LearningPhoenixWeb, :controller

  def index(conn, %{"name" => name}) do
    render(conn, "index.html", name: name)
  end

  def index(conn, _params) do
    render(conn, "index.html", name: "Stranger")
  end
end
