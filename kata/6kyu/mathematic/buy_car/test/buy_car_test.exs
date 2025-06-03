defmodule BuyCarTest do
  use ExUnit.Case
  doctest BuyCar

  defp testing(_, startPriceOld, startPriceNew, savingperMonth, percentLossByMonth, ans) do
    assert BuyCar.nb_months(startPriceOld, startPriceNew, savingperMonth, percentLossByMonth) ==
             ans
  end

  test "nb_months" do
    testing(1, 2000, 8000, 1000, 1.5, {6, 766})
    testing(2, 12000, 8000, 1000, 1.5, {0, 4000})
    testing(3, 8000, 12000, 500, 1, {8, 597})
    testing(4, 18000, 32000, 1500, 1.25, {8, 332})
  end
end
