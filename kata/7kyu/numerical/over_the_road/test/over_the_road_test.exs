defmodule OverTheRoadTest do
  use ExUnit.Case
  doctest OverTheRoad

  test "Basic Test Cases" do
    assert OverTheRoad.overTheRoad(1, 3) == 6
    assert OverTheRoad.overTheRoad(3, 3) == 4
    assert OverTheRoad.overTheRoad(2, 3) == 5
    assert OverTheRoad.overTheRoad(3, 5) == 8
    assert OverTheRoad.overTheRoad(7, 11) == 16
    assert OverTheRoad.overTheRoad(23_633_656_673, 310_027_696_726) == 596_421_736_780
  end
end
