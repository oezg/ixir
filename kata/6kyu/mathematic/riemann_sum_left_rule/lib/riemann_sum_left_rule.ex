defmodule RiemannSumLeftRule do
  @moduledoc """
  https://en.wikipedia.org/wiki/Riemann_sum#Left_rule
  """

  def left(f, n, a, b) do
    delta_x = (b - a) / n
    sum = Enum.reduce(0..(n - 1), 0, fn ele, acc -> acc + f.(a + ele * delta_x) end)
    sum * delta_x
  end
end
