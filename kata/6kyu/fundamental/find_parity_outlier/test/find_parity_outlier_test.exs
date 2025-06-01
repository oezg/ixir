defmodule FindParityOutlierTest do
  use ExUnit.Case
  doctest FindParityOutlier

  test "Sample tests" do
    assert FindParityOutlier.find_outlier([0, 1, 2]) == 1
    assert FindParityOutlier.find_outlier([1, 2, 3]) == 2
    assert FindParityOutlier.find_outlier([2, 6, 8, 10, 3]) == 3
    assert FindParityOutlier.find_outlier([0, 0, 3, 0, 0]) == 3
    assert FindParityOutlier.find_outlier([1, 1, 0, 1, 1]) == 0
  end
end
