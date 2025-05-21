defmodule HexagonBeam do
  @moduledoc false

  def max_hexagon_beam(n, lst) do
    hexagon = hexagon(n, lst)

    diagonals_right =
      for i <- 0..(n - 1) do
        for j <- 0..(2 * n - 2), i + j < 2 * n - 1 do
          Enum.at(hexagon, j) |> Enum.at(i + j)
        end
      end

    diagonals_left =
      for i <- 1..(n - 1) do
        for j <- 0..(2 * n - 2), i + j < 2 * n - 1 do
          Enum.at(hexagon, i + j) |> Enum.at(j)
        end
      end

    [hexagon, Enum.zip_with(hexagon, &Function.identity/1), diagonals_left, diagonals_right]
    |> Enum.map(fn matrix -> matrix |> Enum.map(&Enum.sum/1) |> Enum.max() end)
    |> Enum.max()
  end

  def hexagon(sides, coll) do
    stream = Stream.cycle(coll)

    Enum.concat(sides..(2 * sides - 1), (2 * sides - 2)..sides//-1)
    |> zip_sum()
    |> Enum.map(fn {start, amount} -> Enum.slice(stream, start, amount) end)
    |> Enum.with_index()
    |> Enum.map(fn {row, index} ->
      padding = sides - (index + 1)

      if index < sides do
        row ++ zeros(padding)
      else
        zeros(-padding) ++ row
      end
    end)
  end

  def zip_sum(coll), do: Enum.zip(reductions(coll), coll)
  def reductions(coll), do: reductions([0], Enum.drop(coll, -1)) |> Enum.reverse()
  def reductions(acc, []), do: acc
  def reductions([], [h | t]), do: reductions([h], t)
  def reductions([cur | _] = acc, [h | t]), do: reductions([cur + h | acc], t)

  def zeros(n), do: Stream.repeatedly(fn -> 0 end) |> Enum.take(n)
end
