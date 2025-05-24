defmodule BijectiveBinary do
  @moduledoc """
  Methods to convert between Bijective Binary strings and integers and back.
  https://en.wikipedia.org/wiki/Bijective_numeration
  """

  @spec convert_to_int(binary()) :: non_neg_integer()
  def convert_to_int(s), do: convert_to_int(s, 0)
  defp convert_to_int("", acc), do: acc
  defp convert_to_int("1" <> rest, acc), do: convert_to_int(rest, acc * 2 + 1)
  defp convert_to_int("2" <> rest, acc), do: convert_to_int(rest, acc * 2 + 2)

  @spec convert_from_int(non_neg_integer()) :: binary()
  def convert_from_int(n) do
    Stream.unfold(n, fn
      0 ->
        nil

      n ->
        z = 2 - rem(n, 2)
        {z, div(n - z, 2)}
    end)
    |> Enum.reverse()
    |> Enum.join()
  end
end
