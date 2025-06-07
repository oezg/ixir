defmodule BackwardPrimes do
  @moduledoc """
  Backwards Primes are primes that when read backwards in base 10 (from right to left) are a different prime
  """
  require Integer

  @spec backwards_prime(integer(), integer()) :: [integer()]
  def backwards_prime(start, stop) when Integer.is_even(start),
    do: backwards_prime(start + 1, stop)

  def backwards_prime(start, stop) do
    init_primes = stop |> digit_ceil() |> root_ceil() |> sieve()

    prime? = fn number ->
      root = root_ceil(number)

      init_primes
      |> Stream.take_while(&(&1 <= root))
      |> Enum.all?(&(rem(number, &1) > 0))
    end

    for prime <- start..stop//2,
        prime?.(prime),
        reversed = reverse_number(prime),
        prime != reversed,
        prime?.(reversed),
        do: reverse_number(reversed)
  end

  defp sieve(number) when is_integer(number), do: sieve(Range.to_list(3..number//2), [2])
  defp sieve([], acc), do: Enum.reverse(acc)

  defp sieve([head | tail], acc) do
    tail
    |> Enum.reject(&(rem(&1, head) == 0))
    |> sieve([head | acc])
  end

  defp reverse_number(number) do
    number
    |> Integer.digits()
    |> Enum.reverse()
    |> Integer.undigits()
  end

  defp digit_ceil(number), do: 10 ** ceil(:math.log10(number))

  defp root_ceil(number), do: ceil(:math.sqrt(number))
end
