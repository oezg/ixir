defmodule PolydivisibleTest do
  use ExUnit.Case
  doctest Polydivisible

  def run_test(n, sol), do: assert(Polydivisible.next(n) == sol)

  describe "example tests" do
    test "0", do: run_test(0, 1)
    test "10", do: run_test(10, 12)
    test "11", do: run_test(11, 12)
    test "1234", do: run_test(1234, 1236)
    test "123220", do: run_test(123_220, 123_252)
  end
end
