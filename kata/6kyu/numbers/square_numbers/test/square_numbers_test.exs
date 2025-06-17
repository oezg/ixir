defmodule SquareNumbersTest do
  use ExUnit.Case
  doctest SquareNumbers

  def run_test(n, sol), do: assert(SquareNumbers.solve(n) == sol)

  describe "Example Tests" do
    test "1", do: run_test(1, -1)
    test "2", do: run_test(2, -1)
    test "3", do: run_test(3, 1)
    test "4", do: run_test(4, -1)
    test "5", do: run_test(5, 4)
    test "7", do: run_test(7, 9)
    test "8", do: run_test(8, 1)
    test "9", do: run_test(9, 16)
    test "10", do: run_test(10, -1)
    test "11", do: run_test(11, 25)
    test "13", do: run_test(13, 36)
    test "17", do: run_test(17, 64)
    test "88901", do: run_test(88901, 5_428_900)
    test "290101", do: run_test(290_101, 429_235_524)
  end
end
