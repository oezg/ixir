defmodule SwapAdjacentBits do
  @moduledoc false

  def swap_adjacent_bits(n) do
    n
    |> binary_32()
    |> Enum.chunk_every(2)
    |> Enum.map(&Enum.reverse/1)
    |> List.flatten()
    |> Integer.undigits(2)
  end

  def binary_32(n, i \\ 31)
  def binary_32(n, 0), do: [n]

  def binary_32(n, i) do
    pow = 2 ** i
    [div(n, pow) | binary_32(rem(n, pow), i - 1)]
  end
end
