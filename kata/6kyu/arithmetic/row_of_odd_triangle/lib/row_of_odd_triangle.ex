defmodule RowOfOddTriangle do
  @moduledoc """
  Given a triangle of consecutive odd numbers, find the nth row
  """

  def odd_row(n) do
    for x <- 1..(2 * n - 1)//2, do: x + n * (n - 1)
    # |> Enum.map(&(&1 + n * (n - 1)))
  end
end
