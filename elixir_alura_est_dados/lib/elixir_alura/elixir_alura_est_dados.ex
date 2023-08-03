defmodule MenorPCarro do
  #car ["lamb", "jipe", "brasilia", "smart", "fusca"]
  #preco [10000, 46000, 16000, 46000, 17000]
  def vp(car, preco, qtd, "maior"), do: Enum.zip(car, preco) |> Enum.sort_by(fn {_name, preco} -> preco end, :desc) |> Enum.take(qtd)
  def vp(car, preco, qtd, "menor"), do: Enum.zip(car, preco) |> Enum.sort_by(fn {_name, preco} -> preco end) |> Enum.take(qtd)
  def vp(_, _, _, _), do: {:error, "Ordem digitada incorreta"}
end


#def vp(car, preco, qtd, ordem) do
#  case ordem do
#    "maior" -> Enum.zip(car, preco) |> Enum.sort_by(fn {_name, preco} -> preco end, :desc) |> Enum.take(qtd)
#    "menor" ->  Enum.zip(car, preco) |> Enum.sort_by(fn {_name, preco} -> preco end) |> Enum.take(qtd)
#    _ -> {:error, "Ordem digitada incorreta: #{ordem}"}
#  end
#end

#defmodule MenorPCarro do
#  #car ["lamb", "jipe", "brasilia", "smart", "fusca"]
#  #preco [10000, 46000, 16000, 46000, 17000]
#  def vp(car, preco, qtd, ordem) do
#    case ordem do
#      "maior"-> maior(car, preco, qtd)
#      "menor"-> menor(car, preco, qtd)
#      _ -> {:error, "ordem digitada incorreta: #{ordem}"}
#    end
#  end
#
#
#  end
#  defp maior(car, preco, qtd) do
#    Enum.zip(car, preco)
#    |> Enum.sort_by(fn {_name, preco} -> preco end, :desc)
#    |> Enum.take(qtd)
#  end
#
#  defp menor(car, preco, qtd) do
#    Enum.zip(car, preco)
#    |> Enum.sort_by(fn {_name, preco} -> preco end)
#    |> Enum.take(qtd)
#  end
#end

#defmodule MenorMaiorS do
# #nome = ["Fernando", "Alfredo", "Flávio", "Marcela"]
# #sal =  [3200, 6000, 5000, 2200]
#
#  def men(nome, sal) do
#    Enum.zip(nome, sal)
#    |>Enum.min_by(fn {_nome, sal} -> sal end)
#  end
#  def mai(nome, sal) do
#    Enum.zip(nome, sal)
#    |>Enum.max_by(fn {_nome, sal} -> sal end)
#  end
#end
