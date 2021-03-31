defmodule MyFirstHTTPServer.MyProcess do
  @moduledoc """
  This is my first process

  pid = spawn(MyFirstHTTPServer.MyProcess, :start, [])
  """

  def start do
    IO.puts("Starting my first process")
  end

end
