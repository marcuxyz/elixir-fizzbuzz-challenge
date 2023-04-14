defmodule Fizzbuzz do
  def run(numbers) do
    numbers
    |> String.split(",")
    |> Enum.map(&String.to_integer/1)
    |> Enum.map(&validate/1)
  end

  def validate(number) when rem(number, 3) == 0 and rem(number, 5) == 0, do: :fizzbuzz
  def validate(number) when rem(number, 3) == 0, do: :fizz
  def validate(number) when rem(number, 5) == 0, do: :buzz
  def validate(number), do: number
end
