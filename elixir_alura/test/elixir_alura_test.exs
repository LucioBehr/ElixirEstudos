defmodule ElixirAluraTest do
  use ExUnit.Case
  doctest ElixirAlura

  test "greets the world" do
    assert ElixirAlura.hello() == :world
  end
end
