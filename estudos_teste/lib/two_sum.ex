defmodule TwoSum do
  @spec two_sum(nums :: [integer], target :: integer) :: [integer]
  def two_sum(nums, target),d o: Enum.filter(nums, fn x -> x > target end) |>length()

end
