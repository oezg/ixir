defmodule AdditionTest do
  use ExUnit.Case
  doctest Addition

  test "Sample tests" do
    Enum.each(
      [{2, 11, 13}, {0, 1, 1}, {0, 0, 0}, {16, 18, 214}, {26, 39, 515}, {122, 81, 1103}],
      fn {a, b, c} -> assert Addition.add(a, b) == c end
    )
  end
end
