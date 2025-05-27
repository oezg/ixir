defmodule SuperCoordinateSumsTest do
  use ExUnit.Case
  doctest SuperCoordinateSums

  def run_test(d, n, sol), do: assert(SuperCoordinateSums.super_sum(d, n) == sol)

  describe "Super Sums" do
    test "D = 1, N = 1", do: run_test(1, 1, 0)
    test "D = 2, N = 2", do: run_test(2, 2, 4)
    test "D = 3, N = 3", do: run_test(3, 3, 81)
    test "D = 4, N = 4", do: run_test(4, 4, 1536)
    test "D = 5, N = 5", do: run_test(5, 5, 31250)
    test "D = 6, N = 6", do: run_test(6, 6, 699_840)
    test "D = 7, N = 7", do: run_test(7, 7, 17_294_403)
    test "D = 8, N = 8", do: run_test(8, 8, 469_762_048)
  end
end
