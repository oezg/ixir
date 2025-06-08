defmodule HigherSameBitsTest do
  use ExUnit.Case
  doctest HigherSameBits

  defp tester(n, exp) do
    act = HigherSameBits.next_higher(n)
    assert act == exp, "Expected #{act} to equal #{exp} for next_higher(#{n})"
  end

  test "basic tests" do
    tester(128, 256)
    tester(1, 2)
    tester(1022, 1279)
    tester(127, 191)
    tester(1_253_343, 1_253_359)
  end
end
