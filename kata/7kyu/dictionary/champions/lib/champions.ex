defmodule Champions do
  @moduledoc false

  def count_wins(winner_list, country) do
    Enum.count(winner_list, fn %{country: winner_country} ->
      country == winner_country
    end)
  end
end
