defmodule LatestClockTest do
  use ExUnit.Case
  doctest LatestClock

  test "latest_clock(1, 9, 8, 3) should return \"19:38\"" do
    assert LatestClock.latest_clock(1, 9, 3, 8) == "19:38"
  end

  test "latest_clock(9, 1, 2, 5) should return \"21:59\"" do
    assert LatestClock.latest_clock(9, 1, 2, 5) == "21:59"
  end
end
