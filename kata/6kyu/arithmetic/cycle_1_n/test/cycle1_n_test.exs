defmodule Cycle1NTest do
  use ExUnit.Case
  doctest Cycle1N

  defp dotest(numtest, n, ans) do
    IO.puts("Test #{numtest}")
    assert Cycle1N.cycle(n) == ans
  end

  test "cycle" do
    dotest(1, 3, 1)
    dotest(2, 33, 2)
    dotest(3, 18118, -1)
    dotest(4, 69, 22)
    dotest(5, 197, 98)
  end
end
