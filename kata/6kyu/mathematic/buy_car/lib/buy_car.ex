defmodule BuyCar do
  @moduledoc """
  How many months will it take him to save up enough money to buy
  the car he wants, and how much money will he have left over?
  """

  def nb_months(startPriceOld, startPriceNew, savingPerMonth, percentLossByMonth) do
    Stream.unfold({0, startPriceOld - startPriceNew, startPriceOld - startPriceNew}, fn
      {_month, _diff, available} when available >= 0 ->
        nil

      {month, diff, available} ->
        {
          {month + 1, round(available)},
          {month + 1, diff * (1 - (percentLossByMonth + div(month, 2) * 0.5) / 100),
           diff + savingPerMonth * month + savingPerMonth}
        }
    end)
    |> Enum.to_list()
    |> List.last()
  end
end
