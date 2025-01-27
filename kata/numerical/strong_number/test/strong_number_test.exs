defmodule StrongNumberTest do
  use ExUnit.Case
  doctest StrongNumber

  defp testing(n, exp) do
    actual = StrongNumber.strong(n)
    assert actual == exp, "Given #{n}, expected #{exp}, got #{actual}"
  end

  test "basic tests" do
    testing(1, "STRONG!!!!")
    testing(2, "STRONG!!!!")
    testing(145, "STRONG!!!!")
    testing(7, "Not Strong !!")
    testing(93, "Not Strong !!")
    testing(185, "Not Strong !!")
  end
end
