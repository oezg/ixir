defmodule PiApproximation do
  @moduledoc false
  require Integer

  def iter_pi(epsilon) do
    aux(:math.pi() / 4, epsilon / 4, 0, 0)
  end

  defp aux(pi_4, epsilon, acc, n) when abs(acc - pi_4) < epsilon do
    [n, Float.floor(acc * 4, 10)]
  end

  defp aux(pi_4, epsilon, acc, n) when Integer.is_odd(n) do
    aux(pi_4, epsilon, acc - 1 / (2 * n + 1), n + 1)
  end

  defp aux(pi_4, epsilon, acc, n) do
    aux(pi_4, epsilon, acc + 1 / (2 * n + 1), n + 1)
  end
end
