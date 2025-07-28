defmodule Cycle1N do
  @moduledoc false
  require Integer

  @doc """
  Given an integer n (n > 1), return the length of the cycle if n and 10 are coprimes, otherwise return -1.
  """
  @spec cycle(pos_integer()) :: pos_integer()
  def cycle(n) when Integer.is_even(n) or rem(n, 5) == 0, do: -1

  def cycle(n), do: cycle(n, rem(10, n) * 10, [div(10, n)])

  defp cycle(n, rest, acc) do
    repeating?(acc) || cycle(n, rem(rest, n) * 10, [div(rest, n) | acc])
  end

  defp repeating?(list) do
    half_length = div(length(list), 2)
    {a, b} = Enum.split(list, half_length)

    if a == b and Enum.sum(a) > 0, do: half_length
  end
end
