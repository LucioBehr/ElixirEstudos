defmodule ExMon.Game.Actions
  do
    alias ExMon.Game.Actions.Attack
    alias ExMon.Game
    def fetch_move(move)
      do
        Game.player()
        |> Map.get(:moves)
        |> find_moves(move)
      end
      defp find_moves(moves, move)
        do
          Enum.find_value(moves, {:error, move}, fn {key, value} ->
            if value == move, do: {:ok, key} end)
        end
      def attack(move)
        do
          case Game.turn()
            do
              :player -> Attack.oponnent(:computer, move)
              :computador -> Attack.oponnent(:player, move)
            end
        end
  end
