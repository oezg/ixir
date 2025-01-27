defmodule SimpleConsecutivePairs do
  @moduledoc false

  def pairs(list) do
    list
    |> Enum.chunk_every(2, 2, :discard)
    |> Enum.count(&consecutive?/1)
  end

  defp consecutive?([a, b]) do
    abs(a - b) == 1
  end
end
