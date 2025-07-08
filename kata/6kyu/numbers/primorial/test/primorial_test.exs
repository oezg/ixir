defmodule PrimorialTest do
  use ExUnit.Case
  doctest Primorial

  defp testing(n, exp) do
    a = Primorial.num_primorial(n)
    assert a == exp, "Given number #{n}, expected #{exp}, got #{a}"
  end

  test "Basic tests" do
    testing(3, 30)
    testing(4, 210)
    testing(5, 2310)
    testing(8, 9_699_690)
    testing(9, 223_092_870)
  end
end
