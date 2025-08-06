defmodule ParabolicArcLengthTest do
  use ExUnit.Case
  doctest ParabolicArcLength

  def assertFuzzy(n, exp) do
    merr = 1.0e-6
    IO.puts("Testing n: #{n}")
    act = ParabolicArcLength.len_curve(n)
    IO.puts("act: #{act}")
    IO.puts("exp: #{exp}")
    inrange = abs(act - exp) <= merr

    if inrange == false do
      IO.puts("At 1e-6: Expected value must be #{exp} but was #{act}")
    end

    assert inrange == true
    IO.puts("#")
  end

  test "len_curve" do
    assertFuzzy(1, 1.414213562)
    assertFuzzy(10, 1.478197397)
    assertFuzzy(40, 1.478896272)
    assertFuzzy(200, 1.478940994)
  end
end
