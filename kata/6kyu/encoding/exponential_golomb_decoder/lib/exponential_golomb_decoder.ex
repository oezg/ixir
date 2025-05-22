defmodule ExponentialGolombDecoder do
  @moduledoc """
  Convert an exponential-Golomb encoded binary string
  to the array of decoded integers it represents.
  An exponential-Golomb code is a way of representing an integer using bit patterns.
  To encode any non-negative integer x using the exponential-Golomb code:
  Write down x + 1 in binary, without leading zeroes.
  Count ( all ) the bits written, subtract one, and add that many zeroes to the front of the bit string.
  """

  @spec decoder(binary()) :: list()
  def decoder(s), do: decoder(s, 0, [])

  defp decoder("", 0, acc), do: acc |> Enum.reverse()
  defp decoder("0" <> code, n, acc), do: decoder(code, n + 1, acc)

  defp decoder("1" <> _ = code, n, acc) do
    {code, tail} = String.split_at(code, n + 1)
    decoder(tail, 0, [decode(code) | acc])
  end

  defp decode(code) do
    {n, _} = Integer.parse(code, 2)
    n - 1
  end
end
