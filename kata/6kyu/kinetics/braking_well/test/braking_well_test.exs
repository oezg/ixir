defmodule BrakingWellTest do
  use ExUnit.Case
  doctest BrakingWell

  def assertFuzzyEquals(actual, expected) do
    merr = 1.0e-2
    inrange = abs(actual - expected) <= merr
    IO.puts("In range: #{inrange}")

    if inrange == false do
      exp = Float.round(expected, 2)
      act = Float.round(actual, 2)
      IO.puts("At 1e-2: Expected value must be #{exp} but was #{act}")
    end

    assert inrange == true
  end

  test "dist" do
    assertFuzzyEquals(BrakingWell.dist(144, 0.3), 311.83146449201496)
    assertFuzzyEquals(BrakingWell.dist(92, 0.5), 92.12909477605366)
  end

  test "speed" do
    assertFuzzyEquals(BrakingWell.speed(159, 0.8), 153.79671564846308)
    assertFuzzyEquals(BrakingWell.speed(164, 0.7), 147.91115701756493)
  end
end
