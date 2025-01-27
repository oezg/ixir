defmodule ProductOfMaximumsTest do
  use ExUnit.Case
  doctest ProductOfMaximums

  defp testing(arr, size, exp) do
    actual = ProductOfMaximums.max_product(arr, size)

    assert actual == exp,
           "Given list #{inspect(arr, charlists: :as_lists)} and size #{size}, expected #{exp}, got #{actual}"
  end

  test "basic tests" do
    testing([4, 3, 5], 2, 20)
    testing([10, 8, 7, 9], 3, 720)
    testing([8, 6, 4, 6], 3, 288)
    testing([10, 2, 3, 8, 1, 10, 4], 5, 9600)
    testing([13, 12, -27, -302, 25, 37, 133, 155, -14], 5, 247_895_375)
    testing([-4, -27, -15, -6, -1], 2, 4)
    testing([-17, -8, -102, -309], 2, 136)
    testing([10, 3, -27, -1], 3, -30)
    testing([14, 29, -28, 39, -16, -48], 4, -253_344)
    testing([1], 1, 1)
  end
end
