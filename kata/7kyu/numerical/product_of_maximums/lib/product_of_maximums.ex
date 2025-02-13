defmodule ProductOfMaximums do
  @moduledoc false

  @doc """
  Given an array of integers, Find the product of the k maximal numbers.
  """
  def max_product(arr, k) do
    arr
    |> Enum.sort(&(&1 > &2))
    |> Enum.take(k)
    |> Enum.reduce(&(&1 * &2))
  end
end
