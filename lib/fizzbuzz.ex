defmodule Fizzbuzz do
  def run(numbers) do
    numbers
    |> String.split(",")
    |> Enum.map(fn n -> String.to_integer(n) end)
    # a função validate poderia ser chamada no map acima
    |> Enum.map(fn n -> validate(n) end)
  end

  def validate(number) when rem(number, 3) == 0 and rem(number, 5) == 0, do: :fizzbuzz
  def validate(number) when rem(number, 3) == 0, do: :fizz
  def validate(number) when rem(number, 5) == 0, do: :buzz
  def validate(number), do: number
end
