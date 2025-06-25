defmodule StrongestEvenNumber do
  @moduledoc """
  The strongness of an even number is the number of times we
  can successively divide it by 2 until we reach an odd number.
  """

  @doc """
  Given a closed interval [n, m], return the even number that
  is the strongest in the interval. If multiple solutions
  exist return the smallest strongest even number.

  ## Examples

    iex> StrongestEvenNumber.strongest_even(129, 193)
    192
  """

  @spec strongest_even(integer(), integer()) :: integer()
  def strongest_even(n, m) when n < m do
    Range.new(floor(:math.log2(m)), 0, -1)
    |> Enum.map(fn x -> Bitwise.bsl(1, x) end)
    |> Enum.map(fn x -> x * ceil(n / x) end)
    |> Enum.drop_while(fn x -> x > m end)
    |> List.first()
  end
end
