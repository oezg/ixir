defmodule Divisible13Test do
  use ExUnit.Case
  doctest Divisible13

  defp testing(numtest, n, ans) do
    IO.puts("Test #{numtest} \n")
    assert Divisible13.thirt(n) == ans
  end

  test "thirt" do
    testing(1, 8529, 79)
    testing(2, 85_299_258, 31)
    testing(3, 5634, 57)
    testing(4, 1_111_111_111, 71)
    testing(5, 987_654_321, 30)
  end
end
