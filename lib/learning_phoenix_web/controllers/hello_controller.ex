defmodule LearningPhoenixWeb.HelloController do
  use LearningPhoenixWeb, :controller

  def index(conn, _params) do
    text(conn, "hello!!!")
  end
end
