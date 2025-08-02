defmodule HighestScoringWord do
  @moduledoc false

  def high(str) do
    String.split(str)
    |> Enum.max_by(
      fn word ->
        String.to_charlist(word) |> Enum.map(&(&1 - 96)) |> Enum.sum()
      end,
      fn -> "" end
    )
  end
end
