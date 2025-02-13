defmodule BenefactorTest do
  use ExUnit.Case
  doctest Benefactor

  test "Benefactor new_avg" do
    IO.puts("Test 1")
    assert Benefactor.new_avg([14, 30, 5, 7, 9, 11, 16], 90) == 628
    IO.puts("Test 2")

    assert_raise ArgumentError, "Expected New Average is too low", fn ->
      Benefactor.new_avg([14, 30, 5, 7, 9, 11, 15], 2)
    end
  end
end
