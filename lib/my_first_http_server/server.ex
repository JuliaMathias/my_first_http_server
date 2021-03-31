defmodule MyFirstHttpServer.Server do
  @moduledoc """
   This is my first HTTP router to process requests.
  """

  use Plug.Router

  plug :match
  plug :dispatch

  get "/first" do
    send_resp(conn, 200, "my first response")
  end

  match _ do
    send_resp(conn, 404, "this route does not exist. I am sorry")
  end
end
