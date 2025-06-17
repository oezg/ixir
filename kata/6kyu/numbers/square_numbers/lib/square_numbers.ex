defmodule SquareNumbers do
  @moduledoc """
  Given a number n (n > 0), return the smallest square number m (m > 0)
  such that n + m is also a perfect square. If there is no answer, return -1.
  """
  require Integer

  def solve(n) when n > 0 do
    factor_pairs(n)
    |> ks()
    |> Enum.map(fn k -> k ** 2 end)
    |> Enum.min(fn -> -1 end)
  end

  def ks(factors) do
    factors
    |> Enum.filter(fn {a, b} -> Integer.is_even(a + b) end)
    |> Enum.map(fn {a, b} -> div(b - a, 2) end)
  end

  def factor_pairs(n) when n > 0 do
    1..(ceil(:math.sqrt(n)) - 1)//1
    |> Enum.filter(fn a -> rem(n, a) == 0 end)
    |> Enum.map(fn a -> {a, div(n, a)} end)
  end
end
