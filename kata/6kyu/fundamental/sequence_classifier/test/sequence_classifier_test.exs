defmodule SequenceClassifierTest do
  use ExUnit.Case
  doctest SequenceClassifier

  test "Basic tests" do
    example_tests = [
      {[3, 5, 8, 1, 14, 3], 0},
      {[3, 5, 8, 9, 14, 23], 1},
      {[3, 5, 8, 8, 14, 14], 2},
      {[14, 9, 8, 5, 3, 1], 3},
      {[14, 14, 8, 8, 5, 3], 4},
      {[8, 8, 8, 8, 8, 8], 5},
      {[8, 9], 1},
      {[8, 8, 8, 8, 8, 9], 2},
      {[9, 8], 3},
      {[9, 9, 9, 8, 8, 8], 4}
    ]

    Enum.each(example_tests, fn {r, sol} ->
      assert SequenceClassifier.sequence_classifier(r) == sol
    end)
  end
end
