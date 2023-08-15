defmodule Ex1 do
# Faça uma função que recebe por parâmetro o raio de uma esfera e calcula o seu volume (v = 4/3.P .R3).

def vol(r) when is_number(r), do: 4.0/3.0 * :math.pi() * :math.pow(r, 3)
def vol(_), do: {:error, "NaN"}
end


defmodule Ex2 do
  # Escreva um procedimento que recebe as 3 notas de um aluno por parâmetro e uma letra.
  # Se a letra for A o procedimento calcula a média aritmética das notas do aluno, se for P,
  # a sua média ponderada (pesos: 5, 3 e 2) e se for H, a sua média harmônica.
  # A média calculada também deve retornar por parâmetro.

  def nota(n1, n2, n3, "A"), do: (n1+ n2+ n3) / 3
  def nota(n1, n2, n3, "P"), do: ((n1*5) + (n2*3) + (n3*2)) / (5+3+2)
  def nota(n1, n2, n3, "H"), do: 3/ ((1/n1) + (1/n2) + (1/n3))
  def nota(_, _, _, _), do: {:error, "invalid values"}

  def n(n1, n2, n3, l) when is_number(n1) and is_number(n2) and is_number(n3) and is_binary(l) do
    case l do
      "A" -> (n1+ n2+ n3) / 3
      "P" -> ((n1*5) + (n2*3) + (n3*2)) / (5+3+2)
      "H" -> 3/ ((1/n1) + (1/n2) + (1/n3))
      _ -> "invalid option"
    end
  end
  def n(_, _, _, _), do: {:error, "invalid values"}
end


defmodule Ex3 do
#Faça uma função que recebe por parâmetro um valor inteiro e positivo e retorna
#o valor lógico Verdadeiro caso o valor seja primo e Falso em caso contrário.
############## desnecessario #############
end

defmodule Ex4 do
  #Intermediário4. Faça um procedimento que recebe por parâmetro os valores necessário para
  #o cálculo da fórmula de báskara e retorna, também por parâmetro, as suas raízes, caso seja possível calcular.
  ########### nao fazer ##########
end

defmodule Ex5 do
  #Faça uma função que recebe por parâmetro o tempo de duração de uma fábrica expressa em segundos
  #e retorna também por parâmetro esse tempo em horas, minutos e segundos.

  def tempo(t, "S") when is_float(t), do: IO.puts("#{t} segundos são equivalentes a #{(t/60)} minutos ou #{(t/60) /60} horas")
  def tempo(t, "M") when is_float(t), do: IO.puts("#{t} minutos são equivalentes a #{(t*60)} segundos ou #{(t/60)} horas")
  def tempo(t, "H") when is_float(t), do: IO.puts("#{t} horas são equivalentes a #{(t*60) *60} segundos ou #{(t*60)} minutos")
  def tempo(_, _), do: {:error, "invalid value"}
end

defmodule Ex6 do
  #Faça um procedimento que recebe a idade de um nadador por parâmetro e retorna ,
  #também por parâmetro, a categoria desse nadador de acordo com a tabela abaixo:
  def cat(age) when age >= 1 and age <5, do: "invalid age"
  def cat(age) when age >= 5 and age <= 7, do: "infantil a"
  def cat(age) when age >= 8 and age <= 10, do: "infantil b"
  def cat(age) when age >= 11 and age <= 13, do: "juvenil a"
  def cat(age) when age >= 14 and age <= 17, do: "juvenil b"
  def cat(age) when age >= 18, do: "adulto"
  def cat(_), do: "invalid value"
end

defmodule Ex9 do
  #Faça uma função que recebe um valor inteiro e verifica se o valor é positivo ou negativo.
  #A função deve retornar um valor booleano.
  @spec norp(any) :: boolean | {:error, <<_::56>>}
  def norp(v) when v > 0, do: true
  def norp(v) when v < 0, do: false
  def norp(_), do: {:error, "invalid"}
end

defmodule Ex10 do
  require Integer
  # 10. Faça uma função que recebe um valor inteiro e verifica se o valor é par ou ímpar.
  # A função deve retornar um valor booleano.
  def paim(v) when Integer.is_even(v), do: true
  def paim(v) when Integer.is_odd(v), do: false
  def paim(_), do: nil
end

defmodule Ex11 do
  # Leia um vetor de 12 posições e em seguida ler também dois valores X e Y quaisquer correspondentes
  # a duas posições no vetor. Ao final seu programa deverá escrever a soma dos valores encontrados nas
  # respectivas posições X e Y.
  def valor(list, x, y) when length(list) == 12, do: Enum.at(list, x) + Enum.at(list, y)
  def valor(_, _, _), do: "error"
end
