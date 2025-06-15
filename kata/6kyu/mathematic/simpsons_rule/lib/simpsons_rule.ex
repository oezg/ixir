defmodule SimpsonsRule do
  @moduledoc false
  require Integer

  @spec simpson(integer()) :: float()
  def simpson(n), do: simpson(0, :math.pi(), n, fn x -> :math.sin(x) ** 3 * 3 / 2 end)

  defp simpson(a, b, n, f) when Integer.is_even(n) and a <= b and is_function(f, 1) do
    h = (b - a) / n
    sum1 = Enum.sum_by(1..div(n, 2), &f.(a + (2 * &1 - 1) * h))
    sum2 = Enum.sum_by(1..(div(n, 2) - 1), &f.(a + 2 * &1 * h))
    (b - a) / 3 / n * (f.(a) + f.(b) + 4 * sum1 + 2 * sum2)
  end
end
