defmodule NumbersWithSameDigitsTest do
  use ExUnit.Case
  doctest NumbersWithSameDigits

  def act(expected, num) do
    IO.puts("num : #{num}")
    actual = NumbersWithSameDigits.sum_arrangements(num)
    IO.puts("actual: #{actual}")
    IO.puts("expected: #{expected}")
    assert actual == expected
    IO.puts("#")
  end

  test "fixed tests" do
    IO.puts("Fixed Tests")
    act(1332, 123)
    act(99990, 1185)
    act(187, 98)
    act(6_666_600, 48157)
    act(24_799_997_520, 3_409_825)
    act(15_321_599_998_467_840, 2_453_029_184)
  end
end
