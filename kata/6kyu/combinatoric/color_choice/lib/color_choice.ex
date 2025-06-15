defmodule ColorChoice do
  @moduledoc """
  Find x such that n choose x = m, for a given m >= 0 and
  a given n > 0. If there are several solutions, return
  the smallest. If there are no solutions, return -1.
  """

  @spec checkchoose(pos_integer(), pos_integer()) :: integer()
  def checkchoose(m, n) do
    Enum.find(1..div(n, 2), -1, &(choose(n, &1) == m))
  end

  def choose(n, x) when n < x, do: 0

  def choose(n, x) do
    Enum.zip((x + 1)..n//1, 1..(n - x)//1)
    |> Enum.reduce(1, fn {a, b}, acc -> div(a * acc, b) end)
  end
end
