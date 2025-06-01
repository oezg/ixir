defmodule FindParityOutlier do
  @moduledoc """
  You are given an array containing at least 3 integers.
  The array is either entirely comprised of odd integers
  or entirely comprised of even integers except for a
  single integer N. Return this "outlier" N.
  """

  @spec find_outlier([integer()]) :: integer()
  def find_outlier(integers) do
    outlier_parity =
      1 -
        (integers
         |> Enum.take(3)
         |> Enum.map(&Integer.mod(&1, 2))
         |> Enum.sum()
         |> div(2))

    Enum.find(integers, &(Integer.mod(&1, 2) == outlier_parity))
  end
end
