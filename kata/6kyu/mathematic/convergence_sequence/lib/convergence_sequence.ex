defmodule ConvergenceSequence do
  @moduledoc false

  def f(1, 0, eps), do: 0
  def f(x, y, eps) when norm(x, y) >= 1, do: -1

  def f(x, y, eps) do
    aux(x, y, eps, 0)
  end

  def s(n, 1, 0), do: 0

  def s(n, x, y) do
  end

  def norm(x, y) do
    :math.sqrt(x * x + y * y)
  end
end
