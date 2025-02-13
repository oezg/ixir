defmodule LargestInSeries do
  @moduledoc false

  @spec solution(String.t()) :: integer()
  def solution(digits) do
    digits
    |> to_charlist()
    |> Enum.map(&(&1 - ?0))
    |> Enum.chunk_every(5, 1, :discard)
    |> Enum.map(&Integer.undigits/1)
    |> Enum.max()
  end
end
