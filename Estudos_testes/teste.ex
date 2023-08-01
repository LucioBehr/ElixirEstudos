defmodule Examples do
  defstruct first: 0, last: 0
end

# O programa recebe um multiplicador inteiro a, e 2 valores tambem inteiros, no caso first e last.
# O programa faz um loop indo desde o parametro first até o parametro last e guarda em uma lista i
# O programa faz um map pegando a lista i e definindo uma funcao el, que multiplica todos os valores da lista i e retorna como o el
# O programa executa o enum.sum para somar todos os elementos da lista e retornar em sum_times o resultado da multiplicacao e soma
# Caso os valores digitados nao sejam os esperados pelo programa
defmodule Teste do
@spec sum_times(integer, %Examples{first: integer, last: integer}) :: integer
def sum_times(a, params) do
  for i <- params.first..params.last do
    i
  end
  |> Enum.map(fn el -> el * a end)
  |> Enum.sum()
  #|> round
end
def sum_times(_, _) do
  IO.puts "Erro: entrada inválida. Certifique-se de fornecer um inteiro e uma estrutura Examples com valores inteiros first e last."
end
end