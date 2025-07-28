defmodule NumbersWithSameDigits do
  @moduledoc false

  def sum_arrangements(num) do
    digits = Integer.digits(num)
    count = length(digits)
    factor = Enum.product(1..(count - 1))
    sum = Enum.sum(digits)
    ones = List.duplicate(1, count) |> Integer.undigits()
    ones * sum * factor
  end
end
