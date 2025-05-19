defmodule Polydivisible do
  @moduledoc false

  def next(n) do
    if n < 1 do
      1
    else
      if 3_608_528_850_368_400_786_036_725 <= n do
        nil
      else
        Stream.iterate(n + 1, &next_divisible_by_length/1)
        |> Stream.drop_while(&is_not_polydivisible/1)
        |> Enum.take(1)
        |> List.first()
      end
    end
  end

  def is_not_polydivisible(n) when is_integer(n) do
    cond do
      n < 10 -> false
      rem(n, count_digits(n)) > 0 -> true
      true -> is_not_polydivisible(div(n, 10))
    end
  end

  def next_divisible_by_length(n) do
    len = count_digits(n)
    n + len - rem(n, len)
  end

  def count_digits(n) do
    ceil(:math.log(n) / :math.log(10))
  end
end
