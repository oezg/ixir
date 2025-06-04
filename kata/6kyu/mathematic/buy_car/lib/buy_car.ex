defmodule BuyCar do
  @moduledoc """
  How many months will it take him to save up enough money to buy
  the car he wants, and how much money will he have left over?
  """

  def nb_months(startPriceOld, startPriceNew, savingPerMonth, percentLossByMonth) do
    while(startPriceOld - startPriceNew, savingPerMonth, percentLossByMonth, 0)
  end

  def loss(percentLossByMonth, monthCount), do: percentLossByMonth + div(monthCount + 1, 2) * 0.5
  def loose(difference, loss_percent), do: difference * (1 - loss_percent / 100)

  def while(difference, spm, plbm, nbm) do
    available = difference + spm * nbm

    if available >= 0 do
      {nbm, round(available)}
    else
      while(loose(difference, loss(plbm, nbm)), spm, plbm, nbm + 1)
    end
  end
end
