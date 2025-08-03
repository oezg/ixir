defmodule ConsecutiveStrings do
  @moduledoc false

  def longest_consec(_strarr, k) when k <= 0, do: ""

  def longest_consec(strarr, k) do
    Enum.chunk_every(strarr, k, 1, :discard)
    |> Enum.map(&Enum.join/1)
    |> Enum.max_by(&String.length/1, fn -> "" end)
  end
end
