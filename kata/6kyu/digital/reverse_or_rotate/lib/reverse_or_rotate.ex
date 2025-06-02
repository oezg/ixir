defmodule ReverseOrRotate do
  @moduledoc """
  The input is a string str of digits. Cut the string into chunks
  (a chunk here is a substring of the initial string) of size sz
  (ignore the last chunk if its size is less than sz).
  If the sum of a chunk's digits is divisible by 2, reverse that
  chunk; otherwise rotate it to the left by one position. Put
  together these modified chunks and return the result as a string.
  """
  def revrot("", _sz), do: ""
  def revrot(_str, sz) when sz <= 0, do: ""

  def revrot(str, sz) do
    to_charlist(str)
    |> Enum.chunk_every(sz, sz, :discard)
    |> Enum.map(&if rem(Enum.sum(&1), 2) == 0, do: Enum.reverse(&1), else: tl(&1) ++ [hd(&1)])
    |> List.flatten()
    |> to_string()
  end
end
