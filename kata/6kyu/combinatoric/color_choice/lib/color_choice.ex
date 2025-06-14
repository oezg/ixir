defmodule ColorChoice do
  @moduledoc """
  Find x such that n choose x = m, for a given m >= 0 and
  a given n > 0. If there are several solutions, return
  the smallest. If there are no solutions, return -1.
  """

  def checkchoose(m, n) do
    1..div(n, 2)
    |> Enum.find(
      -1,
      fn
        x -> choose(n, x) == m
      end
    )
  end

  defp choose(n, x) do
    div(Enum.product((x + 1)..n), Enum.product(1..(n - x)))
  end
end
