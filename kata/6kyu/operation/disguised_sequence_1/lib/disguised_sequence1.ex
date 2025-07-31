defmodule DisguisedSequence1 do
  @moduledoc false

  def fcn(n) do
    aux(1, 2, n)
  end

  def aux(_u0, u1, 1), do: u1
  def aux(u0, u1, n), do: aux(u1, relation(u0, u1), n - 1)

  def relation(x, y) do
    div(6 * x * y, 5 * x - y)
    |> IO.inspect()
  end
end
