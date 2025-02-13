defmodule BinomialCoefficient do
  @moduledoc false

  @doc """
  Calculate the sum of the squares of the binomial coefficients
  on a given horizontal line, n.
  """
  def easyline(n) do
    # Sum of squares of binomial coefficients of n: C(2n, n)
    binomial_coefficient_efficient(2 * n, n)
  end

  def binomial_coefficients(n) do
    0..n
    |> Enum.map(&binomial_coefficient(n, &1))
  end

  def binomial_coefficient(_n, 0), do: 1
  def binomial_coefficient(n, n), do: 1

  def binomial_coefficient(n, k) do
    binomial_coefficient(n - 1, k - 1) + binomial_coefficient(n - 1, k)
  end

  def binomial_coefficient_efficient(n, k) do
    # C(n, k) = C(n, n - k)
    k = min(k, n - k)

    # C(n, k) = n! / (k! * (n - k)!)
    Enum.reduce(1..k, 1, fn i, acc ->
      div(acc * (n - i + 1), i)
    end)
  end
end
