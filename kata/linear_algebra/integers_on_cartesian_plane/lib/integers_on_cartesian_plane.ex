defmodule IntegersOnCartesianPlane do
  @moduledoc """
  Let us consider integer coordinates x, y in the Cartesian plane and three functions f, g, h defined by:

      f: 1 <= x <= n, 1 <= y <= n --> f(x, y) = min(x, y)
      g: 1 <= x <= n, 1 <= y <= n --> g(x, y) = max(x, y)
      h: 1 <= x <= n, 1 <= y <= n --> h(x, y) = x + y

  where n is a given integer (n >= 1) and x, y are integers in the domain D: (1 <= x <= n, 1 <= y <= n).
  """

  @doc """
  return the sum of min(x, y) in D.
  """
  def sumin(n), do: n1(n) * (2 * n + 1) / 6

  @doc """
  return the sum of max(x, y) in D.
  """
  def sumax(n), do: 2 * sumin(n) - n1(n) / 2

  @doc """
  return the sum of x + y in D.
  """
  def sumsum(n) do
    n * n1(n)
  end

  defp n1(n), do: n * n + n
end
