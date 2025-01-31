defmodule MakeValleyTest do
  use ExUnit.Case
  doctest MakeValley

  test "greets the world" do
    assert MakeValley.make_valley([]) == []
    assert MakeValley.make_valley([79, 35, 54, 19, 35, 25]) == [79, 35, 25, 19, 35, 54]

    assert MakeValley.make_valley([67, 93, 100, -16, 65, 97, 92]) == [
             100,
             93,
             67,
             -16,
             65,
             92,
             97
           ]

    assert MakeValley.make_valley([66, 55, 100, 68, 46, -82, 12, 72, 12, 38]) == [
             100,
             68,
             55,
             38,
             12,
             -82,
             12,
             46,
             66,
             72
           ]

    assert MakeValley.make_valley([14, 14, 14, 14, 7, 14]) == [14, 14, 14, 7, 14, 14]
    assert MakeValley.make_valley([14, 14, 14, 14, 14]) == [14, 14, 14, 14, 14]

    assert MakeValley.make_valley([17, 17, 15, 14, 8, 7, 7, 5, 4, 4, 1]) == [
             17,
             15,
             8,
             7,
             4,
             1,
             4,
             5,
             7,
             14,
             17
           ]
  end
end
