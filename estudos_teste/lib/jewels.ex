defmodule Solution do
  @spec num_jewels_in_stones(jewels :: String.t, stones :: String.t) :: integer
  def num_jewels_in_stones(jewels, stones) do
    # Convert the jewels string into a list of characters
    # Convert the stones string into a list of characters and use Enum.reduce to count
    Enum.reduce(String.graphemes(stones), 0, fn stone, acc ->
      if stone in String.graphemes(jewels) do
        acc + 1
      else
        acc
      end
    end)
  end
end
