defmodule ProductArray do
  @moduledoc false

  @doc """
  Given an array of integers, construct a product array of same size such that
  prod[i] is equal to the product of all the elements of arr[] except arr[i].
  """
  def product_array(nums) do
    product = Enum.product(nums)
    Enum.map(nums, &div(product, &1))
  end
end
