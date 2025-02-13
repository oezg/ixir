defmodule SevenTest do
  use ExUnit.Case
  doctest Seven

  defp testing(numtest, u, ans) do
    IO.puts("Test #{numtest}")
    assert Seven.seven(u) == ans
  end

  test "seven" do
    testing(0, 1021, [10, 2])
    testing(1, 477_557_101, [28, 7])
    testing(2, 477_557_102, [47, 7])
    testing(3, 371, [35, 1])
    testing(4, 372, [33, 1])
    testing(5, 1603, [7, 2])
  end
end
