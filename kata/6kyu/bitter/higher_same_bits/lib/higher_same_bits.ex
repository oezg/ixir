defmodule HigherSameBits do
  @moduledoc """
  Find the next higher integer with the same number of '1'- Bits.
  I.e. as many 1 bits as before. Input is always an int between 1 and 1<<30
  """

  def next_higher(n) when is_integer(n) and n > 0 do
    bit_count = fn x -> for(<<bit::1 <- :binary.encode_unsigned(x)>>, do: bit) |> Enum.sum() end
    target = bit_count.(n)

    Stream.iterate(n + 1, fn x -> x + 1 end)
    |> Stream.filter(fn x -> target == bit_count.(x) end)
    |> Stream.take(1)
    |> Enum.at(0)
  end
end
