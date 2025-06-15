defmodule SimpsonsRuleTest do
  use ExUnit.Case
  doctest SimpsonsRule

  def assertFuzzyEquals(actual, expected) do
    merr = 1.0e-10
    inrange = abs(actual - expected) <= merr
    IO.puts("In range: #{inrange}")

    if inrange == false do
      exp = Float.round(expected, 10)
      act = Float.round(actual, 10)
      IO.puts("At 1e-10: Expected value must be #{exp} but was #{act}")
    end

    assert inrange == true
  end

  test "simpson" do
    assertFuzzyEquals(SimpsonsRule.simpson(290), 1.9999999986)
    assertFuzzyEquals(SimpsonsRule.simpson(72), 1.9999996367)
    assertFuzzyEquals(SimpsonsRule.simpson(252), 1.9999999975)
    assertFuzzyEquals(SimpsonsRule.simpson(40), 1.9999961668)
  end
end
