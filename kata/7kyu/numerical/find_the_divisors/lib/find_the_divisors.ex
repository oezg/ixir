defmodule FindTheDivisors do
  @moduledoc false

  @doc """
  ## Examples

      iex>FindTheDivisors.divisors(2)
      "2 is prime"
      iex>FindTheDivisors.divisors(15)
      [3, 5]
      iex>FindTheDivisors.divisors(13)
      "13 is prime"

  """
  def divisors(n) when is_integer(n) do
    factors = for i <- 2..ceil(n / 2)//1, rem(n, i) == 0, do: i

    if Enum.empty?(factors) do
      "#{n} is prime"
    else
      factors
    end
  end
end
