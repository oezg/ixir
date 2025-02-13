defmodule FusionChamberShutdownTest do
  use ExUnit.Case
  doctest FusionChamberShutdown

  test "basic tests" do
    assert FusionChamberShutdown.burner(45, 11, 100) == {5, 45, 0}
    assert FusionChamberShutdown.burner(354, 1_023_230, 0) == {0, 0, 354}
    assert FusionChamberShutdown.burner(939, 3, 694) == {1, 346, 0}
    assert FusionChamberShutdown.burner(215, 41, 82100) == {20, 215, 0}
    assert FusionChamberShutdown.burner(113, 0, 52) == {0, 26, 0}
  end
end
