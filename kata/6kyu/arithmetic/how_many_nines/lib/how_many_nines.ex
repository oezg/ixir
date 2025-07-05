defmodule HowManyNines do
  @moduledoc """
  How many integers in the range [0..n] contain at least one 9 in their decimal representation?
  """

  @spec nines(integer()) :: integer()
  def nines(0), do: 0
  def nines(n), do: nines(Integer.digits(n), floor(:math.log10(n)), 0)
  defp nines([], _exp, acc), do: acc
  defp nines([9 | tail], exp, acc), do: acc + 9 * nine(exp) + Integer.undigits(tail) + 1
  defp nines([head | tail], exp, acc), do: nines(tail, exp - 1, acc + head * nine(exp))

  defp nine(0), do: 0
  defp nine(1), do: 1

  defp nine(n), do: 10 ** (n - 1) + 9 * nine(n - 1)
end
