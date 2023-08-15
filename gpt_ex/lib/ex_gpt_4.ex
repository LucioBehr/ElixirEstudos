defmodule ExGpt1 do
#Pattern Matching Básico em Listas
#Dada uma lista, escreva funções que:
#Retorne o primeiro elemento.
#Retorne os dois primeiros elementos.
#Retorne o último elemento.

#def list_first(list), do: hd(list) # sem usar pattern matching
def list_first([head | _tail]), do: head
def list_first2([first, second | _tail]), do: [first, second]
  def last_element([head | []]), do: head
  def last_element([_ | tail]), do: last_element(tail)
end


defmodule ExGpt2 do
#Dada uma tupla {a, b, c}, escreva funções que:
#Retorne o segundo elemento.
#Inverta a ordem dos elementos.

def tuple_second({_, b, _}), do: b

def tuple_invert({a,b,c}), do: {c, b, a}

end

defmodule ExGpt3 do
#Pattern Matching em Mapas
#Dado um mapa %{name: "John", age: 30, city: "New York"}, escreva funções que:
#Retorne o nome.
#Retorne a cidade.
#Verifique se uma chave :country está presente.
def map_name(%{name: usr_name}), do: usr_name
def map_city(%{city: usr_city}), do: usr_city
def map_country(%{country: country}), do: country
def map_country(_), do: {:error, "country doesnt exist"}
end


defmodule ExGpt4 do
#Pattern Matching em Estruturas
#Suponha que você tenha uma estrutura %Person{name: nil, age: nil}. Escreva funções que:
#Crie uma nova pessoa com um nome e idade específicos.
#Aumente a idade de uma pessoa em um ano.
defmodule Person do
  defstruct name: nil, age: nil
end

def create_person(name, age), do: %Person{name: name, age: age}

def increase_age(%Person{age: age} = person), do: %Person{person | age: age+1}
end

defmodule ExGpt5 do
#Pattern Matching em Funções para Validação
#Escreva funções que:
#Aceite apenas listas com mais de 3 elementos.
#Aceite apenas mapas que tenham uma chave :name.
#Aceite apenas strings que começam com a letra "A".

def list(l) when length(l) > 3, do: l
def list(_), do: {:error, "list size smaller than 3"}
def map(%{name: _}) , do: {:ok, "map has :name key"}
def map(_), do: {:error, "map has no :name key"}

def string("a" <> _), do: {:ok, "string starts with a"}
def string(_), do: {:error, "string dont starts with a"}
end


defmodule ExGpt6 do
#Recursão com Pattern Matching
#Dada uma lista, escreva funções recursivas que:
#Retorne a soma de todos os elementos da lista.
#Retorne uma nova lista contendo apenas os números pares.
#Retorne uma nova lista com cada elemento duplicado.

def sum([]), do: 0
def sum([head | tail]), do: head + sum(tail)

# Retorna lista contendo apenas os números pares
def filter_evens([]), do: []
def filter_evens([head | tail]) when rem(head, 2) == 0, do: [head | filter_evens(tail)]
def filter_evens([_ | tail]), do: filter_evens(tail)

# Retorna uma lista com cada elemento duplicado
def double_elements([]), do: []
def double_elements([head | tail]), do: [head, head | double_elements(tail)]

end

defmodule ExGpt7 do
  # Retorna todos os elementos da lista, exceto o último
  def all_except_last([_]), do: []
  def all_except_last([head | tail]), do: [head | all_except_last(tail)]

  # Retorna todos os elementos, exceto os dois últimos
  def all_except_last_two([_ | [_]]), do: []
  def all_except_last_two([head | tail]), do: [head | all_except_last_two(tail)]

end

defmodule ExGp8 do
   # Pattern Matching em Listas de Tuplas

  # Retorna uma lista de todos os nomes
  def names([]), do: []
  def names([{name, _} | tail]), do: [name | names(tail)]

  # Retorna a idade da pessoa chamada "Jane"
  def age_of_jane([{name, age} | _]) when name == "Jane", do: age
  def age_of_jane([_ | tail]), do: age_of_jane(tail)

  # Retorna true se houver alguma pessoa com mais de 40 anos
  def older_than_40?([]), do: false
  def older_than_40?([{_, age} | _]) when age > 40, do: true
  def older_than_40?([_ | tail]), do: older_than_40?(tail)
end
