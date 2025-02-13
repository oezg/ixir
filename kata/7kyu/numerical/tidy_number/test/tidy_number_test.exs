defmodule TidyNumberTest do
  use ExUnit.Case
  doctest TidyNumber

  defp testing(n, e) do
    a = TidyNumber.tidy_number(n)
    assert a == e, "Given number #{n}, expected #{e}, got #{a}"
  end

  test "fixed tests" do
    testing(12, true)
    testing(102, false)
    testing(9672, false)
    testing(2789, true)
    testing(2335, true)
  end
end
