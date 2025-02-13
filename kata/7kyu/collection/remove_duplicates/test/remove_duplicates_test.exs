defmodule RemoveDuplicatesTest do
  use ExUnit.Case
  doctest RemoveDuplicates

  test "remove duplicates" do
    assert RemoveDuplicates.solve([3, 4, 4, 3, 6, 3]) == [4, 6, 3]
    assert RemoveDuplicates.solve([1, 2, 1, 2, 1, 2, 3]) == [1, 2, 3]
    assert RemoveDuplicates.solve([1, 2, 3, 4]) == [1, 2, 3, 4]
    assert RemoveDuplicates.solve([1, 1, 4, 5, 1, 2, 1]) == [4, 5, 2, 1]
    assert RemoveDuplicates.solve([1, 2, 1, 2, 1, 1, 3]) == [2, 1, 3]
  end
end
