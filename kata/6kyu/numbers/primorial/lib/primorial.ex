defmodule Primorial do
  @moduledoc false

  def num_primorial(1), do: 2

  def num_primorial(n) do
    3..n//1
    |> Enum.reduce([3, 2], fn _i, [last | _rest] = acc ->
      next_prime_larger_than_or_equal(last + 2, acc)
    end)
    |> Enum.product()
  end

  def next_prime_larger_than_or_equal(n, primes) do
    if Enum.any?(primes, fn prime -> rem(n, prime) == 0 end) do
      next_prime_larger_than_or_equal(n + 2, primes)
    else
      [n | primes]
    end
  end
end
