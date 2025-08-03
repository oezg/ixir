defmodule DiseaseSpreadTest do
  use ExUnit.Case
  doctest DiseaseSpread

  def assertFuzzyEquals(actual, expected) do
    merr = 1
    inrange = abs(actual - expected) <= merr
    IO.puts("In range: #{inrange}")

    if inrange == false do
      exp = round(expected)
      act = round(actual)
      IO.puts("At 1.0: Expected value must be #{exp} but was #{act}")
    end

    assert inrange == true
  end

  test "doubles" do
    tm = 18
    n = 432
    s0 = 1004
    i0 = 1
    b = 0.00209
    a = 0.51
    assertFuzzyEquals(DiseaseSpread.epidemic(tm, n, s0, i0, b, a), 420)
    tm = 12
    n = 288
    s0 = 1007
    i0 = 2
    b = 0.00206
    a = 0.45
    assertFuzzyEquals(DiseaseSpread.epidemic(tm, n, s0, i0, b, a), 461)
    tm = 13
    n = 312
    s0 = 999
    i0 = 1
    b = 0.00221
    a = 0.55
    assertFuzzyEquals(DiseaseSpread.epidemic(tm, n, s0, i0, b, a), 409)
  end
end
