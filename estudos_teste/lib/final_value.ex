defmodule FinalValue do
  @spec final_value_after_operations(operations :: [String.t]) :: integer
  def final_value_after_operations(operations) do
    operations
    |> Enum.reduce(0, fn
      op, rst when op == "X++" or op == "++X" -> rst + 1
      op, rst when op == "X--" or op == "--X" -> rst - 1
    end)
  end
end
