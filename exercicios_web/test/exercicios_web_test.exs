defmodule ExerciciosWebTest do
  use ExUnit.Case
  doctest ExerciciosWeb

  test "greets the world" do
    assert ExerciciosWeb.hello() == :world
  end
end
