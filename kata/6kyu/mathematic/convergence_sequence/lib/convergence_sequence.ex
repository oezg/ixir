defmodule ConvergenceSequence do
  @moduledoc false

  def f(x, y, _eps) when x * x + y * y >= 1, do: -1

  def f(x, y, eps) do
    ceil(:math.log(eps) / :math.log(norm(x, y))) - 1
  end

  defp norm(x, y) do
    :math.sqrt(x * x + y * y)
  end
end
