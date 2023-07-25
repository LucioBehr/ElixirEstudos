defmodule ExMonTest do
  use ExUnit.Case

  test "create_player returns a correct player" do
    player = ExMon.create_player("Lucio", :chute, :soco, :heal)

    # Assert the player has the correct name
    assert player.name == "Lucio"

    # Assert the player has the correct moves
    assert player.moves == %{move_rnd: :chute, move_avg: :soco, move_heal: :heal}


  end
end
