defmodule MyFirstHTTPServer.MyProcess do
  @moduledoc """
  This is my first process

  pid = spawn(MyFirstHTTPServer.MyProcess, :start, [])
  """

  def start do
    IO.puts("Starting my first process")
    loop()
  end

  def loop do
    receive do
      {from, :hello} when is_pid(from) ->
        send(from, :world)
        loop()

      :exit ->
        IO.puts("Exiting process")

      msg ->
        IO.puts("Received unknown message #{inspect(msg)}")
        loop()
    end
  end
end
