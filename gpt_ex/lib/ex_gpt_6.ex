defmodule Address do
  defstruct city: nil, country: nil
end

defmodule Person do
  defstruct name: nil, age: nil, address: %Address{}
end
#Escreva uma função que aceita uma struct Person e retorna true se a pessoa vive no Brasil e tem mais de 18 anos,
#e false caso contrário.
defmodule ExGpt1 do

  def is_adult_living_in_brazil(%Person{age: age, address: %Address{country: country}}) when age >= 18 and country == "Brasil", do: true
  def is_adult_living_in_brazil(_), do: false
end

defmodule ExGpt2 do
  def matchlist([_head, x | _tail]), do: x
  def matchlist(_), do: nil
end

defmodule ExGpt3 do
  # Dada uma tupla {status, value}, onde status pode ser :ok ou :error,
  # escreva uma função que retorne apenas o valor se o status for :ok e uma mensagem de erro caso contrário.
  def resp({:ok, value}), do: "valor ok: #{value}"
  def resp({:error, _value}), do: {:error, "erro"}
end

defmodule ExGpt4 do
  # Escreva funções separadas para calcular a área de diferentes formas geométricas.
  # Use pattern matching no nome da função para diferenciar entre as formas.
  def calc_area({:quadrado, side}), do: side * side
  def calc_area({:retangulo, l1, l2}), do: l1 * l2
  def calc_area({:triangulo, b, h}), do: (b * h) /2
  def calc_area({:circle, r}), do: :math.pi * (r * r)
end

# Dada uma lista de tuplas, onde cada tupla contém três elementos,
# escreva uma função que retorne uma nova lista contendo apenas o segundo elemento de cada tupla.
defmodule ExGpt5 do
  #Usando recursão e pattern matching, escreva uma função que retorne a soma dos elementos de uma lista.
  def sum_list([]), do: 0
  def sum_list([head | tail]), do: head + sum_list(tail)
end

defmodule ExGpt6 do
  # Suponha que você tenha uma lista de maps. Cada map representa um livro com título, autor e número de páginas.
  # Escreva uma função que use pattern matching para encontrar e retornar todos os livros de um autor específico.
  def find_author([], _), do: []
  def find_author([head | tail], author) when head.autor == author, do: [head | find_author(tail, author)]
  def find_author([_head | tail], author), do: find_author(tail, author)
end

defmodule ExGpt7 do
  # Escreva uma função que aceita uma lista de tuplas e retorna uma lista contendo apenas o segundo elemento de cada tupla.
  def second_element([]), do: []
  def second_element([head | tail]), do: [elem(head, 1) | second_element(tail)]
end

defmodule ExGpt8 do
  # Dado um map que representa um carro com campos como :brand, :model, :year e :price,
  # escreva uma função que retorne true se o carro for de uma marca específica e o preço for menor que um valor determinado,
  # e false caso contrário.
  # car = %{brand: "a", model: "b", year: 2, price: 3}
  def carvalue(%{brand: brand_car, price: price_car}, brand, price) when brand_car == brand and price_car < price, do: true
  def carvalue(_), do: false
end

defmodule ExGpt9 do
  # Considere uma struct Person com campos :name, :age, e :address.
  # O :address é outro struct com campos :city e :country.
  # Escreva uma função que retorne o nome das pessoas que vivem em um país específico.
  def is_living_country(%Person{name: name, address: %Address{country: country}}, exp_country) when country == exp_country, do: name
  def is_living_country(_), do: nil
end

defmodule ExGpt10 do
  require Integer
  def pares_lista([]), do: []
  def pares_lista([head | tail]) when Integer.is_even(head), do: [head | pares_lista(tail)]
  def pares_lista([_ | tail]), do: pares_lista(tail)
end

defmodule ExGpt11 do
  #  Dada uma lista de strings, retorne a primeira string que tenha mais de 5 caracteres.
  def lstring([]), do: "lista nao contem strings"
  def lstring([<<first_5::binary-size(5), _rest::binary>> = head | _tail]), do: head
  def lstring([_head | tail]), do: lstring(tail)
    #case String.length(head) >5 do
    #  true -> head
    #  false -> lstring([tail])
    #end
end

defmodule ExGpt12 do
  #Escreva uma função que receba uma tupla com três elementos e retorne uma nova tupla, invertendo a ordem dos elementos.
  def tuple({x, y, z}), do: {z, y, x}
end

defmodule ExGpt13 do
  # Dada uma tupla com status e valor ({:ok, valor} ou {:error, motivo}), escreva uma função que trate ambos os casos,
  # retornando apenas o valor se tudo estiver bem, ou uma mensagem personalizada se houver um erro.
  def tmatching({:ok, value}), do: value
  def tmatching({:error, reason}), do: {:error, reason}
  def tmatching(_), do: nil
end

defmodule ExGpt14 do
  # Escreva funções separadas que aceitem argumentos de diferentes tipos (integer, float, string) e,
  # com base no tipo de entrada, realizem operações diferentes.
  def gen(v1, v2, v3) when is_binary(v1) and is_binary(v2) and is_binary(v3), do: v1 <> v2 <> v3
  def gen(v1, v2, v3) when is_float(v1) and is_float(v2) and is_float(v3), do: v1 / v2 / v3
  def gen(v1, v2, v3) when is_integer(v1) and is_integer(v2) and is_integer(v3), do: v1 * v2 * v3
  def gen(_, _, _), do: {:error, "invalid"}
end

defmodule ExGpt15 do
  # Dado uma lista de tuplas onde cada tupla contém um nome e uma idade, escreva uma função que retorne
  # uma lista de nomes das pessoas que têm mais de 20 anos, usando pattern matching para extrair diretamente os nomes.
  # list = [{"jose", 15}, {"jorge", 12}]

  def lstuple([]), do: []
  def lstuple([{name, age} | tail]) when age > 20, do: [name | lstuple(tail)]
  def lstuple([_head | tail]), do: lstuple(tail)
end

defmodule ExGpt16 do
  # Dado uma list com vários campos, escreva uma função que retorne o número de campos cujo valor é nil.
  def listar_ls(list, acc), do: list(list, acc)
  def list([], count), do: count
  def list([head | tail], count) when head == nil, do: [head | list([tail],  count+1)]
  def list([_head| tail], count), do: list(tail, count)
end

defmodule ExGpt17 do
# Escreva uma função que, usando recursão e pattern matching, calcule o fatorial de um número.

def fatorial(0), do: 1
def fatorial(n), do: fatorial(1, n)
defp fatorial(total, 0), do: total
defp fatorial(total, atual), do: total * atual |>fatorial(atual-1)
end

defmodule ExGpt18 do
  # Utilize pattern matching e recursão para escrever uma função que determine se uma string é um palíndromo
  #(ou seja, a mesma lida de frente para trás e de trás para frente).
  def is_palin(string) do
    case string == String.reverse(string) do
      true -> "igual"
      false -> "diferente"
    end
  end
end

defmodule ExGpt19 do
  # Dado um mapa que representa um usuário com campos como
  # :first_name, :last_name, :age e :address (que é outro mapa com :city e :country), escreva funções para:
  # Retornar o nome completo do usuário.
  # Retornar se o usuário é maior de idade (considere 18 anos).
  # Retornar se o usuário vive em um país específico.
  # map = %{first_name: "aaa", last_name: "aaa", age: 13, address: %{city: "aaa", country: "aaaa"}}

  def dados(%{first_name: first, last_name: last, age: age, address: %{country: country}}, exp_cntry)
  when age > 18 and country == exp_cntry, do: IO.inspect(first <> " " <> last <> " tem ")

  end
