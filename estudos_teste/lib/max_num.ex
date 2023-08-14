defmodule MaxNum do
    @spec most_words_found(sentences :: [String.t]) :: integer
    def most_words_found(sentences) do
      Enum.reduce(sentences, 0, fn x, acc ->
        word_count = x |> String.split(~r/\W+/) |> length()
        case word_count > acc do
          true -> word_count
          false -> acc
      end end)
end
end
