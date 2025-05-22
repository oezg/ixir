defmodule RiemannSumLeftRuleTest do
  use ExUnit.Case
  doctest RiemannSumLeftRule

  defp testing(f, n, a, b, expected) do
    assert_in_delta(RiemannSumLeftRule.left(f, n, a, b), expected, 0.0001)
  end

  test "Basic Tests" do
    testing(&(&1 * &1), 4, 1, 2, 1.96875)
    testing(&(&1 * &1 * &1), 20, -2, 1, -4.441875)
  end
end
