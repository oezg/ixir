defmodule CornerCircleTest do
  use ExUnit.Case
  doctest CornerCircle

  test "corner_circle" do
    assert CornerCircle.corner_circle(3) == 0.51
    assert CornerCircle.corner_circle(17) == 2.92
  end
end
