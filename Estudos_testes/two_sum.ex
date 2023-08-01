defmodule TwoSum do
  @spec two_sum(nums :: [integer], target :: integer) :: String.t()
  def two_sum(nums, target) do
    Enum.find(0..(length(nums) - 2), fn i ->
      Enum.find((i + 1)..(length(nums) - 1), fn j ->
        if Enum.at(nums, i) + Enum.at(nums, j) == target do
          IO.puts("Resultado: [#{i}, #{j}]")
          true
        else
          false
        end
      end)
    end)

    :ok # retornar :ok ou qualquer outro valor, já que o resultado já foi impresso
  end
end
