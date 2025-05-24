defmodule MuOperatorTest do
  use ExUnit.Case
  doctest MuOperator

  def act(a, n, b, expected) do
    IO.puts("a : #{a} - n : #{n} - b : #{b}")
    actual = MuOperator.operator(a, n, b)
    IO.puts("actual: #{actual}")
    IO.puts("expected: #{expected}")
    assert actual == expected
    IO.puts("#\n")
  end

  test "fixed tests" do
    IO.puts("Fixed Tests")
    act(1, 0, 2, 3)
    act(2, 0, 2, 3)
    act(2, 1, 2, 4)
    act(2, 2, 2, 4)
    act(2, 3, 2, 4)
    act(2, 4, 2, 4)
    act(2, 2, 3, 6)
    act(2, 3, 3, 8)
    act(3, 2, 5, 15)
    act(3, 3, 6, 729)
    act(3, 4, 3, 7_625_597_484_987)
  end
end
