defmodule SortTheOddTest do
  use ExUnit.Case
  doctest SortTheOdd

  describe "sample list: " do
    test "[]", do: assert(SortTheOdd.sort_the_odd([]) == [])

    test "[19]", do: assert(SortTheOdd.sort_the_odd([19]) == [19])

    test "[2]", do: assert(SortTheOdd.sort_the_odd([2]) == [2])

    test "[7, 5]", do: assert(SortTheOdd.sort_the_odd([7, 5]) == [5, 7])

    test "[5, 3, 2, 8, 1, 4, 11]",
      do: assert(SortTheOdd.sort_the_odd([5, 3, 2, 8, 1, 4, 11]) == [1, 3, 2, 8, 5, 4, 11])

    test "[2, 22, 37, 11, 4, 1, 5, 0]",
      do:
        assert(
          SortTheOdd.sort_the_odd([2, 22, 37, 11, 4, 1, 5, 0]) == [2, 22, 1, 5, 4, 11, 37, 0]
        )

    test "[1, 111, 11, 11, 2, 1, 5, 0]",
      do:
        assert(
          SortTheOdd.sort_the_odd([1, 111, 11, 11, 2, 1, 5, 0]) == [1, 1, 5, 11, 2, 11, 111, 0]
        )

    test "[1, 2, 3, 4, 5, 6, 7, 8, 9, 0]",
      do:
        assert(
          SortTheOdd.sort_the_odd([1, 2, 3, 4, 5, 6, 7, 8, 9, 0]) == [
            1,
            2,
            3,
            4,
            5,
            6,
            7,
            8,
            9,
            0
          ]
        )

    test "[0, 1, 2, 3, 4, 5, 6, 7, 8, 9]",
      do:
        assert(
          SortTheOdd.sort_the_odd([0, 1, 2, 3, 4, 9, 8, 7, 6, 5]) == [
            0,
            1,
            2,
            3,
            4,
            5,
            8,
            7,
            6,
            9
          ]
        )
  end
end
