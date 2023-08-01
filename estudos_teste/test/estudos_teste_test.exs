defmodule EstudosTesteTest do
  use ExUnit.Case
  doctest EstudosTeste

  test "greets the world" do
    assert EstudosTeste.hello() == :world
  end
end
