defmodule BinomialCoefficientTest do
  use ExUnit.Case
  doctest BinomialCoefficient

  def testing(numtest, k, ans) do
    IO.puts("Test #{numtest}")
    assert BinomialCoefficient.easyline(k) == ans
  end

  test "easyline" do
    testing(1, 7, 3432)
    testing(2, 13, 10_400_600)
    testing(3, 17, 2_333_606_220)
    testing(4, 19, 35_345_263_800)
  end
end
