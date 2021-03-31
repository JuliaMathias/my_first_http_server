defmodule MyFirstHttpServerTest do
  use ExUnit.Case
  doctest MyFirstHttpServer

  test "greets the world" do
    assert MyFirstHttpServer.hello() == :world
  end
end
