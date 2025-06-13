defmodule Banzai do
  @moduledoc false

  def amidakuji(ar) do
    0..String.length(Enum.at(ar, 0))
    |> Enum.map(fn i ->
      Enum.reduce(Enum.reverse(ar), i, fn row, i ->
        cond do
          i > 0 and String.at(row, i - 1) == "1" -> i - 1
          String.at(row, i) == "1" -> i + 1
          true -> i
        end
      end)
    end)
  end
end
