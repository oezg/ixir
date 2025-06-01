defmodule ArrayDiff do
  @moduledoc """
  Implement a function that computes the difference between two lists.
  The function should remove all occurrences of elements from the
  first list (a) that are present in the second list (b). The order
  of elements in the first list should be preserved in the result.
  """

  def array_diff(a, b) do
    Enum.reduce(b, a, fn b1, a1 -> Enum.reject(a1, &(&1 == b1)) end)
  end
end
