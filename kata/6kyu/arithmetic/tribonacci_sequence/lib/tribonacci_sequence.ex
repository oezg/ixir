defmodule TribonacciSequence do
  @moduledoc false

  @spec tribonacci({number, number, number}, non_neg_integer) :: [number]
  def tribonacci(signature, n), do: tribonacci(signature, n, [])

  defp tribonacci(_signature, 0, acc), do: Enum.reverse(acc)
  defp tribonacci({a, b, c}, n, acc), do: tribonacci({b, c, a + b + c}, n - 1, [a | acc])
end
