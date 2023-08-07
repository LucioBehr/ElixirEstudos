defmodule ElixirAlura do
  def hello do
    2
    end

    @spec soma(p1 :: integer(), p2 :: integer()) :: integer()

  def soma(p1, p2) do
    case is_integer(p1) and is_integer(p2) do
      true -> p1+ p2
      false -> {:error, "caractere invalido"}

    end
  end


  def soma_inteiros(p1, p2) do
    case int?(p1) and int?(p2) do
      true -> p1+p2
      false -> {:error, "aaaa"}

    end
  end








def val?(x) do
case int?(x) and maior0?(x) do
  true -> true
  false -> false
end
end
defp int?(x), do: is_integer(x)
defp maior0?(x), do: x > 0


  def tabuada(num) when val(num) == true, do: tabuada(num, 1)

  defp tabuada(_, 11), do: []

  defp tabuada(mult, n) do
    [mult * n] ++tabuada(mult, n + 1)
  end

end
