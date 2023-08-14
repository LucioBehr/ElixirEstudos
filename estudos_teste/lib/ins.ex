defmodule ListNode do
  defstruct val: 0, next: nil

  def new(val, next \\ nil) do
    %ListNode{val: val, next: next}
  end
end

defmodule Ins do
  @spec insert_greatest_common_divisors(head :: ListNode.t | nil) :: ListNode.t | nil
  def insert_greatest_common_divisors(nil), do: nil

  def insert_greatest_common_divisors(%ListNode{val: val, next: nil} = last_node), do: last_node

  def insert_greatest_common_divisors(%ListNode{val: val1, next: %ListNode{val: val2} = next_node}) do
    gcd_value = Integer.gcd(val1, val2)
    gcd_node = ListNode.new(gcd_value, insert_greatest_common_divisors(next_node))
    ListNode.new(val1, gcd_node)
  end
end
