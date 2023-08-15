defmodule Ex211 do
  #Mapas: Crie um mapa com 3 chaves: :nome, :idade e :cidade, cada um com valores relevantes. Depois, escreva uma função que receba este mapa como parâmetro e retorne a idade.
  #dados = %{nome: "joao", idade: 10, cidade: "mendonça"}
  def get_idade(%{idade: idade}), do: idade
  def get_idade(_), do: "erro de digitação"

end

defmodule Ex212 do
  require Integer
  #Listas: Dada uma lista de números [3,6,9,12,15,18], escreva uma função que receba esta lista e retorne apenas os números pares.
  #[3,6,9,12,15,18]
  def is_even(par), do: Enum.filter(par, fn x -> rem(x, 2) == 0 end)
end

defmodule Ex213 do
  #Enum e Integer: Dada uma lista de números de 1 a 100, use a função Enum.filter/2 para retornar apenas números ímpares. Verifique se um número é ímpar usando a função Integer.is_odd/1.
  # um_cem = Enum.to_list(1..100)
  require Integer
  def is_odd(impar), do: Enum.filter(impar, &Integer.is_odd/1)

end

defmodule Ex221 do
  #Enum e mapas: Dada uma lista de mapas, cada um representando uma pessoa com chaves :nome, :idade e :cidade, escreva uma função que use Enum.map/2 para retornar uma lista dos nomes de todas as pessoas.
  # dados_l = [%{nome: "lucio", idade: 5, cidade: "sao paulo"}, %{nome: "jonas", idade: 10, cidade: "rio preto"}, %{nome: "joao", idade: 15, cidade: "mendonca"}]
  def nomes(listamap), do: Enum.map(listamap, fn pessoa -> pessoa[:nome] end)
end

defmodule Ex222 do
  #Listas e Enum: Dada uma lista de números, escreva uma função que retorne a soma de todos os números na lista. Use Enum.reduce/3 para isso.
  def soma(listsoma), do: Enum.reduce(listsoma, 0, fn x, acc -> acc+ x end)
end

defmodule Ex223 do
  #Keyword lists: Escreva uma função que receba uma keyword list e retorne o valor associado à chave :secret.
  def secret(kwlist), do: Enum.map(kwlist, fn {:secret, valor} -> valor end)
end

defmodule Ex231 do
  #Enum, mapas e Keyword lists: Dada uma lista de mapas, cada um representando uma pessoa com chaves :nome, :idade e :cidade, escreva uma função que receba esta lista e uma cidade como parâmetros. A função deve retornar uma lista de nomes das pessoas que moram na cidade dada.
  def cidade_nome(pessoas, cidade), do: Enum.filter(pessoas, fn person -> person[:cidade] == cidade end) |> Enum.map(fn person -> person[:nome] end)
end

defmodule Ex232 do
  #Programação funcional: Dada uma lista de números, escreva uma função que retorne o dobro de cada número se o número for par, e o triplo se o número for ímpar.
  def parimpar(lista), do: Enum.map(lista, fn x ->
  case rem(x, 2) do
    0 -> x * 2
    1 -> x * 3
  end end)
end

defmodule Ex233 do
  require Integer
  #Enum, Listas, Integer: Dada uma lista de números de 1 a 1000, use a função Enum.map/2 e Integer.is_odd/1 para criar uma nova lista que contém true se o número é ímpar e false se o número é par.
  def parimpar(lista), do: Enum.map(lista, &Integer.is_odd/1)
end
#############################################################################################################################

defmodule Ex31 do
  #Escreva uma função chamada concat_lists/2 que receba duas listas e retorne a concatenação delas sem usar a função List.append/2.
  def concat_lists(list1, list2) when is_list(list1) and is_list(list2), do: list1 ++ list2
  def concat_lists(_list1, _list2), do: {:error, "erro, favor digite 2 listas"}
end

defmodule Ex32 do
    def contains_element?(list, element), do: Enum.any?(list, fn x -> x == element end)
end

defmodule Ex32 do
  # Caso base: a lista está vazia; o elemento não está presente.
  def contains_element?([], _element), do: false

  # Caso onde o primeiro elemento da lista (head) é o elemento procurado.
  def contains_element?([head | _tail], element) when head == element, do: true

  # Caso onde o primeiro elemento (head) não é o elemento procurado.
  # Neste caso, fazemos uma chamada recursiva usando o resto da lista (tail).
  def contains_element?([_head | tail], element), do: contains_element?(tail, element)
end

defmodule Ex33 do
  def reverse_list(list), do: Enum.reverse(list)
end

defmodule Ex34 do
  def sum_elements(list), do: Enum.reduce(list, 0, fn lelement, acc -> acc+ lelement end)
end

defmodule Ex35 do
  def count_occurrences(list, elem), do: Enum.reduce(list, 0, fn x, acc ->
  case elem == x do
    true -> acc + 1
    false -> acc
  end end)
end

defmodule Ex36 do
  def unique_elements(list), do: Enum.uniq(list)
end

defmodule Ex37 do
  def split_list(list, div), do: Enum.split(list, div)
end
#############################################################################################################################

defmodule Ex42 do
  def sum_of_squares(list), do: Enum.reduce(list, 0, fn x, acc -> acc + (x*x) end)
    # Use Enum.reduce/3 aqui.
end

defmodule Ex43 do
  def capitalize_words(list) do
    Enum.map(list, &String.capitalize/1)
  end
end

defmodule Ex44 do
  def ex_sec(kwlist), do: Enum.map(kwlist, fn x -> elem(x, 2) end)
  end

  defmodule Ex45 do
    def count_words(string) do
      String.split(string)
      #|> Enum.reduce()
    end
      # Divida a string em palavras e use Enum.reduce/3 para contar.
  end
