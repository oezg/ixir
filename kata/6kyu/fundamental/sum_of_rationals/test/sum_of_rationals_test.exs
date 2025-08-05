defmodule SumOfRationalsTest do
  use ExUnit.Case
  doctest SumOfRationals

  defp testing(numtest, u, ans) do
    IO.puts("Test #{numtest}")
    assert SumOfRationals.sum_fracts(u) == ans
  end

  test "sum_fracts" do
    testing(1, [{1, 2}, {1, 3}, {1, 4}], {13, 12})
    testing(2, [{1, 3}, {5, 3}], 2)
    testing(3, [{1, 3}, {2, 6}], {2, 3})
    testing(4, [{12, 3}, {15, 3}], 9)
  end
end
