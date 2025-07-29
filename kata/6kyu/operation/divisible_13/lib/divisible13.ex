defmodule Divisible13 do
  @moduledoc false

  @doc """
  Calculate the stationary number in the algorithm of divisibility by 13.
  """
  def thirt(n) do
    m =
      [1, 10, 9, 12, 3, 4]
      |> Stream.cycle()
      |> Enum.zip(n |> Integer.digits() |> Enum.reverse())
      |> Enum.map(fn {a, b} -> a * b end)
      |> Enum.sum()

    if n == m do
      n
    else
      thirt(m)
    end
  end
end
