defmodule Ex11  do
def quadlist(list), do: Enum.reduce(list, 0, fn x, acc -> acc+  (x * x) end)
end

defmodule Ex12 do
def upper(list), do: Enum.map(list, fn x -> String.upcase(x) end)
end
