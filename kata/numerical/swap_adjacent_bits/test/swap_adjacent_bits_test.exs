defmodule SwapAdjacentBitsTest do
  use ExUnit.Case
  doctest SwapAdjacentBits

  test "Sample tests" do
    Enum.each(
      [
        {13, 14},
        {74, 133},
        {1_073_741_823, 1_073_741_823},
        {0, 0},
        {1, 2},
        {83748, 166_680}
      ],
      fn {n, expected} -> assert SwapAdjacentBits.swap_adjacent_bits(n) == expected end
    )
  end
end
