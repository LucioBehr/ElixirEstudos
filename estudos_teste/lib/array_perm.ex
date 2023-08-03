defmodule ArrayPerm do
  @spec build_array(nums :: [integer]) :: [integer]
  def build_array(nums) do
  ans = for n <- nums, do: Enum.at(nums, n)
  ans
  end
end
