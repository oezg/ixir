defmodule HexagonBeamTest do
  use ExUnit.Case
  doctest HexagonBeam

  test "sample tests" do
    assert HexagonBeam.max_hexagon_beam(2, [5, 8, 3, 8]) == 24
    assert HexagonBeam.max_hexagon_beam(3, [1, 3, 5, 7]) == 23
    assert HexagonBeam.max_hexagon_beam(4, [2, 4, 6, 8]) == 34
    assert HexagonBeam.max_hexagon_beam(5, [1, 0, 4, -6]) == 9
    assert HexagonBeam.max_hexagon_beam(5, [2]) == 18
  end
end
