defmodule StrongestEvenNumberTest do
  use ExUnit.Case
  doctest StrongestEvenNumber

  test "Example Tests" do
    example_tests = [
      {1, 2, 2},
      {5, 10, 8},
      {48, 56, 48},
      {129, 193, 192}
    ]

    for {n, m, sol} <- example_tests, do: assert(StrongestEvenNumber.strongest_even(n, m) == sol)
  end
end
