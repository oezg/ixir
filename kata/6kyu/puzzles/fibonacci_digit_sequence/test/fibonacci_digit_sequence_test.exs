defmodule FibonacciDigitSequenceTest do
  use ExUnit.Case
  doctest FibonacciDigitSequence

  def run_test(a, b, n, sol), do: assert(FibonacciDigitSequence.find(a, b, n) == sol)

  describe "Basic Tests" do
    test "7,8,9", do: run_test(7, 8, 9, 5)
    test "0,0,1000000", do: run_test(0, 0, 1_000_000, 0)

    test "7,8 and variable n",
      do:
        Enum.zip(0..13, Integer.digits(78_156_112_358_134))
        |> Enum.each(fn {i, d} -> run_test(7, 8, i, d) end)
  end
end
