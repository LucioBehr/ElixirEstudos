defmodule ExMon.GameTest do
  use ExUnit.Case
  alias ExMon.{Game, Player}

  describe "start/2" do
    test "create_player returns a correct player" do
    player = Player.build("Lucio", :chute, :soco, :heal)
    computer = Player.build("computer", :chute, :soco, :heal)
    assert {:ok, _pid} = Game.start(computer, player)
  end
end
  describe "info/0" do
    test "return the current game state" do
      player = Player.build("lucio", :chute, :soco, :heal)
      computer = Player.build("computer", :chute, :soco, :heal)

      Game.start(computer, player)
      expected_response = %{
      player: %Player{
        life: 100,
        name: "lucio",
        moves: %{move_rnd: :soco, move_avg: :chute, move_heal: :heal}
        },
        computer: % Player{
          life: 100,
          name: "computer",
          moves: %{move_rnd: :soco, move_avg: :chute, move_heal: :heal}},
          turn: :player,
          status: :started}

      assert expected_response == Game.info()
  end
end
  describe "update/1" do
    test "return the game status updated" do
      player = Player.build("lucio", :chute, :soco, :heal)
      computer = Player.build("computer", :chute, :soco, :heal)

      Game.start(computer, player)
      expected_response = %{
      player: %Player{
        life: 100,
        name: "lucio",
        moves: %{move_rnd: :soco, move_avg: :chute, move_heal: :heal}
        },
        computer: % Player{
          life: 100,
          name: "computer",
          moves: %{move_rnd: :soco, move_avg: :chute, move_heal: :heal}},
          turn: :player,
          status: :started}

      #return player, status and turn after game started
      expected_response_player = %ExMon.Player{life: 100, name: "lucio", moves: %{move_rnd: :soco, move_avg: :chute, move_heal: :heal}}
      assert expected_response_player == Map.get(Game.info(), :player)
      assert :started == Map.get(Game.info(), :status)
      assert :player == Map.get(Game.info(), :turn)
      assert expected_response == Game.info()

      new_state = %{
      player: %Player{
        life: 86,
        name: "lucio",
        moves: %{move_rnd: :soco, move_avg: :chute, move_heal: :heal}
        },
        computer: % Player{
          life: 50,
          name: "computer",
          moves: %{move_rnd: :soco, move_avg: :chute, move_heal: :heal}},
          turn: :player,
          status: :started}

      Game.update(new_state)
      expected_response = %{new_state | turn: :computer, status: :continue}
      assert expected_response == Game.info()


      #return player, status and turn after game started
      expected_response_player = %ExMon.Player{life: 86, name: "lucio", moves: %{move_rnd: :soco, move_avg: :chute, move_heal: :heal}}
      assert expected_response_player == Map.get(Game.info(), :player)
      assert :continue == Map.get(Game.info(), :status)
      assert :computer == Map.get(Game.info(), :turn)
      assert expected_response == Game.info()
    end
  end
end
