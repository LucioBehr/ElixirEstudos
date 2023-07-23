defmodule FizzBuzz do
def build(file_name) do
#-- primeira forma de fazer--
#file = File.read(file_name)

#-- segunda forma de fazer (com switch case)--
case File.read(file_name) do
  {:ok, result} -> result
  {:error, reason} -> reason
end
end
