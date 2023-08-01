defmodule ConvTemp do
  @spec convert_temperature(celsius :: float) :: [float]
  def convert_temperature(celsius) do
    [kelvin(celsius), fahrenheit(celsius)]
  end

  def kelvin(celsius) do
  celsius + 273.152
  end

  def fahrenheit(celsius) do
  celsius * 1.8 + 32.00
  end
end
