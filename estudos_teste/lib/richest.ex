defmodule Richest do
  @spec maximum_wealth(accounts :: [[integer]]) :: integer
  def maximum_wealth(accounts), do: accounts |>Enum.map(fn soma -> Enum.sum(soma) end) |>Enum.max()
  end
end
