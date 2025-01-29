defmodule ArrayElementParity do
  @moduledoc false

  @doc """
  Given an array of integers whose elements have both a
  negative and a positive value, except for one. Return
  the integer that is either only negative or only positive.
  """
  def solve(array) do
    order = if Enum.sum(array) < 0, do: :asc, else: :desc
    sorted = Enum.sort(array, order)

    sorted
    |> Enum.reverse()
    |> Enum.map(&(-&1))
    |> Enum.zip(sorted)
    |> IO.inspect()
    |> Enum.find_value(fn {r, s} ->
      if s == r, do: false, else: s
    end)
  end
end
