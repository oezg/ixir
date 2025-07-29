defmodule Cycle1N do
  @moduledoc false
  require Integer

  @doc """
  Given an integer n (n > 1), return the length of the cycle if n and 10 are coprimes, otherwise return -1.
  """
  @spec cycle(pos_integer()) :: pos_integer()
  def cycle(n) when Integer.is_even(n) or rem(n, 5) == 0, do: -1

  def cycle(n), do: cycle(n, 1, 10, %{})

  defp cycle(n, index, remainder, remainders) do
    case Map.get(remainders, remainder, 0) do
      0 -> cycle(n, index + 1, rem(remainder * 10, n), Map.put_new(remainders, remainder, index))
      position -> index - position
    end
  end
end
