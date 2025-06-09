defmodule HigherSameBits do
  @moduledoc """
  Find the next higher integer with the same number of '1'- Bits.
  I.e. as many 1 bits as before. Input is always an int between 1 and 1<<30
  """

  @spec next_higher(pos_integer()) :: pos_integer()
  def next_higher(n),
    do: Integer.digits(n, 2) |> Enum.reverse() |> next_higher({0, 0}) |> Integer.undigits(2)

  defp next_higher([], {zeros, ones}),
    do: [1 | List.duplicate(0, zeros + 1)] ++ List.duplicate(1, ones - 1)

  defp next_higher([], acc), do: acc
  defp next_higher([1 | tail], {zeros, ones}), do: next_higher(tail, {zeros, ones + 1})

  defp next_higher([0 | tail], {zeros, 0}), do: next_higher(tail, {zeros + 1, 0})

  defp next_higher([0 | tail], {zeros, ones}),
    do: next_higher(tail, next_higher([], {zeros, ones}))

  defp next_higher([head | tail], acc), do: next_higher(tail, [head | acc])
end
