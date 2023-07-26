defmodule ExMonTest do
  use ExUnit.Case

  import ExUnit.CaptureIO


  alias ExMon.Player
  describe "create_player/4" do
    test "returns a player" do
      expected_answer_Cplayer = %Player{life: 100, name: "lucio", moves: %{move_rnd: :soco, move_avg: :chute, move_heal: :heal}}
      assert expected_answer_Cplayer == ExMon.create_player("lucio", :chute, :soco, :heal)
    end
  end

  describe "start_game/1" do
    test "when the game is started, return a message" do
      player = Player.build("lucio", :chute, :soco, :heal)

      messages = capture_io(fn ->
        assert ExMon.start_game(player) == :ok
      end)

      assert messages =~ "The game is started"
    end
  end

  describe "make_move/1" do
    setup do
      player = Player.build("lucio", :chute, :soco, :heal)
      capture_io(fn ->
        ExMon.start_game(player)
      end)
      :ok
    end

    test " when the move is valid, do the move and the computer makes a move" do

      messages =
        capture_io(fn ->
          ExMon.make_move(:chute)
        end)
    assert messages =~ "The Player attacked the computer dealing"
      end
    test " when the move is invalid, returns an error message" do

      messages =
        capture_io(fn ->
          ExMon.make_move(:ccc)
        end)
    assert messages =~ "Invalid move:"
    end
  end
end
