defmodule MinimumStepsTest do
  use ExUnit.Case
  doctest MinimumSteps

  defp testing(nums, value, exp) do
    a = MinimumSteps.minimum_steps(nums, value)

    msg = """
    Given numbers #{inspect(nums, charlists: :as_lists)} and value #{value},
    Expected #{exp}, instead got #{a}
    """

    assert a == exp, msg
  end

  test "fixed tests" do
    testing([4, 6, 3], 7, 1)
    testing([10, 9, 9, 8], 17, 1)
    testing([8, 9, 10, 4, 2], 23, 3)
    testing([19, 98, 69, 28, 75, 45, 17, 98, 67], 464, 8)
    testing([4, 6, 3], 2, 0)
  end
end
