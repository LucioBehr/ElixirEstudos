#defmodule ValidP do
  #  @spec is_valid(s :: String.t) :: boolean
  #  @expected ["()", "{}", "[]"]
  #  def is_valid(s) do
  #  Enum.any?(@expected, &String.contains?(s, &1))
    #|> case do
    #  true -> true
    #  false -> false
    #end
  #  end
  #end


  defmodule Solution do
    @spec is_valid(s :: String.t) :: boolean
    @match %{
      "(" => ")",
      "{" => "}",
      "[" => "]"
    }
    @closings [")", "]", "}"]
    @openings ["(", "[", "{"]

    def is_valid(s) do
      # is_valid_rec(String.graphemes(s), "")
      is_valid_tail(String.graphemes(s), [])
    end

    def is_valid_rec(false, _), do: false
    def is_valid_rec([char | rest], type_char) when type_char == char, do: rest
    def is_valid_rec([char | rest], type_char) when char in @closings, do: false
    def is_valid_rec([char | rest], type_char) when char in @openings, do: is_valid_rec(is_valid_rec(rest, @match[char]), type_char)
    def is_valid_rec([], ""), do: true
    def is_valid_rec([], _), do: false


    def is_valid_tail(false, _), do: false
    def is_valid_tail([char | rest], [type_char | rest_types]) when type_char == char, do: is_valid_tail(rest, rest_types)
    def is_valid_tail([char | rest], [type_char | rest_types]) when char in @closings, do: false
    def is_valid_tail([char | rest], rest_types) when char in @openings, do: is_valid_tail(rest, [@match[char] | rest_types])
    def is_valid_tail([], []), do: true
    def is_valid_tail(_, _), do: false
  end
