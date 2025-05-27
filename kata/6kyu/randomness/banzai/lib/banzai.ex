defmodule Banzai do
  @moduledoc false

  def amidakuji(ar) do
    height = length(ar)

    matrix = [padding(height, false) | matrice(ar)]

    width = length(matrix)
  end

  def matrice(ar) do
    Enum.map(ar, &String.graphemes/1)
    |> Enum.zip_with(&Function.identity/1)
    |> Enum.map(fn row -> Enum.map(row, &(&1 == "1")) end)
  end

  def padding(n, value) do
    Stream.repeatedly(fn -> value end) |> Enum.take(n)
  end
end
