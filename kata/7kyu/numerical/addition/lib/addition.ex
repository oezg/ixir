defmodule Addition do
  @moduledoc false

  def add(a, b) do
    a_b = [a, b] |> Enum.map(&Integer.digits/1)
    max_len = a_b |> Enum.map(&length/1) |> Enum.max()

    elongate = fn digs ->
      if length(digs) < max_len do
        Enum.concat(digs, List.duplicate(0, max_len - length(digs)))
      else
        digs
      end
    end

    a_b
    |> Enum.map(&Enum.reverse/1)
    |> Enum.map(elongate)
    |> Enum.zip_with(fn [a, b] -> Integer.digits(a + b) end)
    |> Enum.reverse()
    |> List.flatten()
    |> Integer.undigits()
  end
end
