defmodule GeometricProgressionTest do
  use ExUnit.Case
  doctest GeometricProgression

  test "Basic tests" do
    assert GeometricProgression.geometric_sequence_elements(2, 3, 5) == "2, 6, 18, 54, 162"

    assert GeometricProgression.geometric_sequence_elements(2, 2, 10) ==
             "2, 4, 8, 16, 32, 64, 128, 256, 512, 1024"

    assert GeometricProgression.geometric_sequence_elements(1, -2, 10) ==
             "1, -2, 4, -8, 16, -32, 64, -128, 256, -512"
  end
end
