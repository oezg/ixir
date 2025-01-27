defmodule ProductArrayTest do
  use ExUnit.Case
  doctest ProductArray

  defp testing(nums, exp) do
    a = ProductArray.product_array(nums)

    msg = """
    Given numbers #{inspect(nums, charlists: :as_lists)},
    Expected #{inspect(exp, charlists: :as_lists)},
    Got #{inspect(a, charlists: :as_lists)}
    """

    assert a == exp, msg
  end

  test "fixed tests" do
    testing([12, 20], [20, 12])
    testing([3, 27, 4, 2], [216, 24, 162, 324])
    testing([13, 10, 5, 2, 9], [900, 1170, 2340, 5850, 1300])
    testing([16, 17, 4, 3, 5, 2], [2040, 1920, 8160, 10880, 6528, 16320])
  end
end
