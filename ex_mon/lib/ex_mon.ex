defmodule ExMon do
  alias ExMon.{Game, Player}
  alias ExMon.Game.Status
  alias ExMon.Game.Actions
  def create_player(name, move_rnd, move_avg, move_heal) do
    Player.build(name, move_rnd, move_avg, move_heal)
  end

  def start_game(player)
    do
      "Jorgin"

      |> create_player(:atkp, :atkg, :vida)
      |>Game.start(player)

      Status.print_round_message()
    end

  def make_move(move)
    do
      Actions.fetch_move(move)
    end
end
