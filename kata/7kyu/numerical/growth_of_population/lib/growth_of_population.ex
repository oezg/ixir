defmodule GrowthOfPopulation do
  @moduledoc false

  def nb_year(p0, percent, aug, p) do
    Stream.iterate(p0, &(&1 + floor(&1 * percent / 100) + aug))
    |> Enum.take_while(&(&1 < p))
    |> Enum.count()
  end
end
