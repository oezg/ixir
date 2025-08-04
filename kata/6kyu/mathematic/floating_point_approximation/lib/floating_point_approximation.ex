defmodule FloatingPointApproximation do
  @moduledoc false

  def interp(f, l, u, n) do
    d = (u - l) / n
    0..(n - 1)
    |> Enum.map(&Float.floor(f.(l + d * &1), 2))
  end
end
