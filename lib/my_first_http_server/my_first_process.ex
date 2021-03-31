defmodule MyFirstHTTPServer.MyProcess do
  @moduledoc """
  This is my first process

  pid = spawn(MyFirstHTTPServer.MyProcess, :start, [])
  """

  def start do
    IO.puts("Starting my first process")
    loop(%{})
  end

  def loop(state) do
    receive do

      {from, :put, key, value} ->
        IO.puts("Adding key=#{inspect(key)} value=#{inspect(value)} ")
        send(from, :key_value_added)
        loop(Map.put(state, key, value))

      :exit ->
        IO.puts("Exiting process")

      msg ->
        IO.puts("""
        Received unknown message #{inspect(msg)}
        Current state: #{inspect(state)}
        """)
        loop(state)
    end
  end
end
