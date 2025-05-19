defmodule Polydivisible do
  @moduledoc false

  def next(n) do
    if polydivisible?(n) do
      next(n + 1)
    else
      m = div(n, 10)

      if polydivisible?(m) do
      end
    end

    # if n < 1 do
    #   1
    # else
    #   if 3_608_528_850_368_400_786_036_725 <= n do
    #     nil
    #   else
    #     find_polydivisible(n)
    #   end
    # end
  end

  def next_polydivisible(n) do
    len = count_digits(n)

    if count_digits(next_divisible_by_length(n)) > len do
    end
  end

  def find_polydivisible(n) do
    Stream.iterate(1, &next_divisible_by_length/1)
    |> Stream.filter(&polydivisible?/1)
    |> Stream.drop_while(&(&1 <= n))
    |> Enum.take(1)
    |> List.first()
  end

  def polydivisible?(n) when is_integer(n) do
    cond do
      n < 10 -> true
      rem(n, count_digits(n)) > 0 -> false
      true -> polydivisible?(div(n, 10))
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
