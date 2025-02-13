defmodule SumOfPowersOf2 do
  @moduledoc false

  def powers(n) do
    Stream.iterate(1, &(&1 * 2))
    |> Stream.take_while(&(&1 <= n))
    |> Enum.filter(&(Bitwise.band(&1, n) > 0))
  end
end
