defmodule FizzBuzz do
  def build(file_name) do
    # -- primeira forma de fazer--
    # file = File.read(file_name)

    # -- segunda forma de fazer (com switch case)--
    # case File.read(file_name) do
    #  {:ok, result} -> result
    #  {:error, reason} -> reason
    # end

    # -- Terceira forma de fazer (com pipeoperator)--
    file_name
    |> File.read()
    |> handle_file_read()
  end

  defp handle_file_read({:ok, result}) do
    # -- Primeira forma de fazer. As variaveis ficam guardadas e salvas--
    # -- list= String.split(result, ",")
    # -- é uma forma de se fazer de forma nao tao pratica: Enum.map(list, fn number -> String.to_integer(number) end)-- Tente:
    # -- Enum.map(list, &String.to_integer/1)
    # -- De acordo com o professor, essa forma é melhor para passar os argumentos da lista como numeros inteiros usando pipe, mas
    # -- ainda opto por salvar cada variavel respectiva para hipotético uso futuro
    result =
      result
      |> String.split(",")
      |> Enum.map(&convert_and_evaluate_numbers/1)

    {:ok, result}
  end

  defp handle_file_read({:error, reason}), do: {:error, "Erro ao ler arquivo: #{reason}"}

  defp convert_and_evaluate_numbers(element) do
    # -- O professor disse que usando case para a operação, ficaria confuso pois seria um case para 3, um case para 5 e um case
    # -- para 3 e 5, mas é possivel usar case, se colocado dessa forma:
    # number = String.to_integer(element)
    # case {rem(number, 3), rem(number, 5)} do
    #  {0, 0} -> :fizzbuzz
    #  {0, _} -> :fizz
    #  {_, 0} -> :buzz
    #  _ -> number
    # -- A forma como o professor optou foi usando Pattern Matching:
    element
    |> String.to_integer()
    |> evaluate_number()
  end

  defp evaluate_number(number) when rem(number, 5) == 0 and rem(number, 3) == 0, do: :FizzBuzz
  defp evaluate_number(number) when rem(number, 3) == 0, do: :fizz
  defp evaluate_number(number) when rem(number, 5) == 0, do: :buzz
  defp evaluate_number(number), do: number
end
