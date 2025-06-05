defmodule BackwardPrimes do
  @moduledoc """
  Backwards Primes are primes that when read backwards in base 10 (from right to left) are a different prime
  """

  def backwards_prime(start, stop) do
    stop
    |> ceil_base_10()
    |> sieve()
    |> backwards
    |> clamp(start, stop)
  end

  defp ceil_base_10(n) do
    10 ** ceil(:math.log10(n)) - 1
  end

  defp clamp(enumerable, a, b) do
    Enum.drop_while(enumerable, &(&1 < a))
    |> Enum.take_while(&(&1 <= b))
  end

  def backwards(primes), do: backwards(primes, primes, [])
  defp backwards(_primes, [], target), do: Enum.reverse(target)

  defp backwards(primes, [head | tail], acc) do
    s = to_string(head)
    rev = String.reverse(s)

    if s != rev and Enum.member?(primes, String.to_integer(rev)) do
      backwards(primes, tail, [head | acc])
    else
      backwards(primes, tail, acc)
    end
  end

  def sieve(n), do: sieve(3..n//2 |> Enum.to_list(), [2])
  defp sieve([], acc), do: Enum.reverse(acc)

  defp sieve([head | tail], acc) do
    tail
    |> Enum.reject(&(rem(&1, head) == 0))
    |> sieve([head | acc])
  end
end
