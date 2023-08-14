defmodule Ex111 do
  #lista = Enum.to_list(1..10)
  #1.1. Crie uma lista com os números de 1 a 10 e utilize a função `Enum.map/2` para criar uma nova lista onde cada número é multiplicado por 2.

  def lista(lista) when is_list(lista), do: Enum.map(lista, fn x -> x * 2 end)
  def lista(_), do: {:error, "invalid"}
end


defmodule Ex112 do
  #1.2. Crie duas listas, uma com os números de 1 a 5 e outra com os números de 6 a 10. Use a função `++` para concatená-las.
  def lista(lista1, lista2) when is_list(lista1) and is_list(lista2), do: lista1 ++ lista2
  def lista(_, _), do: {:error, "invalid"}

end

defmodule Ex121 do
  #2.1. Crie uma tupla com três elementos e escreva uma função que retorne o terceiro elemento.
  def v_tupla(tupla) when is_tuple(tupla) and tuple_size(tupla) == 3, do: elem(tupla, 2)
  def v_tupla(_), do: {:error, "not a tuple"}

end

defmodule Ex122 do
  #2.2. Crie uma função que aceite uma tupla como argumento e retorne uma nova tupla com um elemento adicional no final.
  def ntupla(tupla, x) when is_tuple(tupla), do: Tuple.append(tupla, x)
  def ntupla(tupla, _) when not is_tuple(tupla), do: {:error, "not a tuple"}
  def ntupla(_), do: {:error, "tuple or x not typed"}
end


defmodule Ex131 do
  #3.1. Crie um mapa que represente um livro, com chaves para o título, autor e ano de publicação. Use a função `Map.put/3` para adicionar uma chave para o número de páginas.
  def livromap(map, n_pages) when is_map(map) and is_integer(n_pages), do: Map.put(map, :pages, n_pages)
  def livromap(map, _) when not is_map(map), do: {:error, "not a map"}
  def livromap(_), do: {:error, "map or pages not typed"}

end


defmodule Ex132 do
  #3.2. Escreva uma função que aceite um mapa e uma chave e retorne o valor associado a essa chave.
  def mapkey(map, key) when is_map(map) do
    Map.fetch(map, key)
    |> case do
    {:ok, _} -> Map.get(map, key)
    :error -> {:error, "value for key not founded"}
      end
  end
  def mapkey(map, _) when not is_map(map), do: {:error, "not a map"}
  def mapkey(_), do: {:error, "error"}
end

defmodule Ex141 do
  #4.1. Crie uma lista de palavras-chave que represente um carro, com chaves para a marca, o modelo e o ano. Use a função `Keyword.put/3` para adicionar uma chave para a cor.
  def klistcar(klistcar, key, value) when is_atom(key) and is_binary(value) do
  case Keyword.keyword?(klistcar) do
    :true -> Keyword.put_new(klistcar, key, value)
    :false -> {:error, "not a keyword list"}
    end
  end

  def klistcar(_, _, _), do: {:error, "error"}
  def klistcar(_, _), do: {:error, "error"}
  def klistcar(_), do: {:error, "error"}
end

defmodule Ex142 do
  #4.2. Escreva uma função que aceite uma lista de palavras-chave e uma chave e retorne o valor associado a essa chave.
  def klistk(klist, key) when is_atom(key)  do
    case Keyword.fetch(klist, key)  do
    {:ok, _} ->Keyword.get(klist, key)
    :error -> {:error, "error"}
    end
  end
def klistk(_, _), do: {:error, "error"}
def klistk(_), do: {:error, "error"}
end




#####################################################################################################################
