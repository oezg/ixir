defmodule CountWithFingersTest do
  use ExUnit.Case
  doctest CountWithFingers

  test "returns the correct value with valid input" do
    assert CountWithFingers.decode("0000001100") == 2
  end

  test "returns -1 with invalid input" do
    assert CountWithFingers.decode("1010010000") == -1
  end
end
