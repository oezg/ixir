defmodule ArrayDiffTest do
  use ExUnit.Case
  doctest ArrayDiff

  test "Sample Tests" do
    assert ArrayDiff.array_diff([1, 2], [1]) == [2]
    assert ArrayDiff.array_diff([1, 2, 2], [1]) == [2, 2]
    assert ArrayDiff.array_diff([1, 2, 2], [2]) == [1]
    assert ArrayDiff.array_diff([1, 2, 2], []) == [1, 2, 2]
    assert ArrayDiff.array_diff([], [1, 2]) == []
    assert ArrayDiff.array_diff([1, 2, 3], [1, 2]) == [3]
  end
end
