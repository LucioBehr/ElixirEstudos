defmodule MaxAch do
  @spec the_maximum_achievable_x(num :: integer, t :: integer) :: integer
  @spec the_maximum_achievable_x(any, any) :: nil | {number, number, 1}
  def the_maximum_achievable_x(num, t) do
    the_maximum_achievable_x(num, t, num)
  end

  defp the_maximum_achievable_x(num, t, x) when t > 0 do
    the_maximum_achievable_x(num + 1, t - 1, x + 1)
  end

  defp the_maximum_achievable_x(_num, _t, x) do
    x
  end
end
