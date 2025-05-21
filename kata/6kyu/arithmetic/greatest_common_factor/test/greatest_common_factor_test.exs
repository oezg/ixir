defmodule GreatestCommonFactorTest do
  use ExUnit.Case
  doctest GreatestCommonFactor

  test "Sample tests" do
    Enum.each(
      [
        {[46, 14, 20, 88], 2},
        {[1, 8], 1},
        {[16, 4, 8], 4},
        {[468, 156, 806, 312, 442], 26},
        {[48, 99, 18], 3},
        {[32, 96, 120, 80], 8},
        {[91, 143, 234, 52], 13},
        {[171, 45, 297, 342], 9}
      ],
      fn {ls, expected} ->
        actual = GreatestCommonFactor.greatest_common_factor(ls)
        assert actual == expected
      end
    )
  end
end
