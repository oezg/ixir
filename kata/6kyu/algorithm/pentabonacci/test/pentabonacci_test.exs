defmodule PentabonacciTest do
  use ExUnit.Case
  doctest Pentabonacci

  def testing(numtest, n, ans) do
    IO.puts("Test #{numtest}")
    assert Pentabonacci.count_odd_pentaFib(n) == ans
  end

  test "count_odd_pentaFib" do
    testing(1, 45, 15)
    testing(2, 68, 23)
    testing(3, 76, 25)
    testing(4, 100, 33)
    testing(5, 121, 40)
  end
end
