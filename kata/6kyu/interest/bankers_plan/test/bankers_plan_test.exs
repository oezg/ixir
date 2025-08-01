defmodule BankersPlanTest do
  use ExUnit.Case
  doctest BankersPlan

  defp testing(numtest, f0, p, c0, n, i, ans) do
    IO.puts("Test #{numtest}")
    assert BankersPlan.fortune(f0, p, c0, n, i) == ans
  end

  test "fortune" do
    testing(1, 100_000, 1, 2000, 15, 1, true)
    testing(2, 100_000, 1, 9185, 12, 1, false)
    testing(3, 100_000_000, 1, 100_000, 50, 1, true)
    testing(4, 100_000_000, 1.5, 10_000_000, 50, 1, false)
    testing(5, 100_000_000, 5, 1_000_000, 50, 1, true)
  end
end
