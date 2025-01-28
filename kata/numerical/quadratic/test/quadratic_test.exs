defmodule QuadraticTest do
  use ExUnit.Case
  doctest Quadratic

  def assertFuzzyEquals(a, b, c) do
    merr = 1.0e-12
    IO.puts("Testing n: #{a} #{b} #{c}")
    x = Quadratic.quadratic(a, b, c)
    smallest = abs(x) < 1.0e-1

    if smallest == false do
      IO.puts("This root is not the good one")
    end

    act = a * x * x + b * x + c
    inrange = abs(act) < merr
    IO.puts("a * x * x + b * x + c = #{act}")

    if inrange == false do
      IO.puts("Expected value must be near 0 but was #{act}")
    end

    correct = smallest && inrange
    assert correct == true
    IO.puts("#")
  end

  test "quadratic" do
    assertFuzzyEquals(7, 4.00e+13, 8)
    assertFuzzyEquals(9, 1.00e+14, 1)
  end
end
