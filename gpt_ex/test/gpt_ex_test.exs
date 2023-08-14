defmodule GptExTest do
  use ExUnit.Case
  doctest GptEx

  test "greets the world" do
    assert GptEx.hello() == :world
  end
end
