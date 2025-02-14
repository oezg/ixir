defmodule GrowthOfPopulationTest do
  use ExUnit.Case
  doctest GrowthOfPopulation

  import GrowthOfPopulation, only: [nb_year: 4]

  test "nb_year" do
    assert nb_year(1500, 5, 100, 5000) == 15
    assert nb_year(1_500_000, 2.5, 10000, 2_000_000) == 10
    assert nb_year(1_500_000, 0.25, 1000, 2_000_000) == 94
  end
end
