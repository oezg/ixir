defmodule FloatingPointApproximationTest do
  use ExUnit.Case
  doctest FloatingPointApproximation
  def testing1(numtest, l, u, n, exp) do
      IO.puts("Test #{numtest + 1} ; x -> x")
      assert FloatingPointApproximation.interp(fn(x) -> x end, l, u, n) == exp
  end
  def testing2(numtest, l, u, n, exp) do
      IO.puts("Test #{numtest + 1} ; x -> sin(x)")
      assert FloatingPointApproximation.interp(fn(x) -> :math.sin(x) end, l, u, n) == exp
  end
  def testing3(numtest, l, u, n, exp) do
      IO.puts("Test #{numtest + 1} ; x -> cos(x)")
      assert FloatingPointApproximation.interp(fn(x) -> :math.cos(x) end, l, u, n) == exp
  end
  def testing4(numtest, l, u, n, exp) do
      IO.puts("Test #{numtest + 1} ; x -> log(x)")
      assert FloatingPointApproximation.interp(fn(x) -> :math.log(x) end, l, u, n) == exp
  end

  test "Basic tests" do
      testing1 0, 0.0, 9.0, 4, [0.0, 2.25, 4.5, 6.75]
      testing1 1, 0.0, 15.0, 9, [0.0, 1.66, 3.33, 5.0, 6.66, 8.33, 10.0, 11.66, 13.33]

      testing2 5, 0.0, 15.0, 6, [0.0, 0.59, -0.96, 0.93, -0.55, -0.07]
      testing2 6, 0.0, 9.0, 7, [0.0, 0.95, 0.53, -0.66, -0.91, 0.14, 0.99]

      testing3 10, 0.0, 9.0, 4, [1.0, -0.63, -0.22, 0.89]
      testing3 11, 0.0, 9.0, 11, [1.0, 0.68, -0.07, -0.78, -1.0, -0.59, 0.19, 0.84, 0.96, 0.47, -0.33]

      testing4 17, 1, 9.0, 5, [0.0, 0.95, 1.43, 1.75, 2.0]
      testing4 18, 2, 15.0, 9, [0.69, 1.23, 1.58, 1.84, 2.05, 2.22, 2.36, 2.49, 2.6]
  end
end
