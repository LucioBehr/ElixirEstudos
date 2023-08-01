defmodule BestTime do
  #definir o menor dia da semana. escolher apos esse menor dia o maior
    @spec max_profit(prices :: [integer]) :: integer
    def max_profit(prices) do
    Enum.find_index(prices, &(&1 == Enum.min(prices)))

  end
  end
