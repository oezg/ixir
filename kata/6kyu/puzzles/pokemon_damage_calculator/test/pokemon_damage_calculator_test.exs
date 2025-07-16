defmodule PokemonDamageCalculatorTest do
  use ExUnit.Case
  doctest PokemonDamageCalculator

  def do_test({p1, p2, dmg, dfe}, sol),
    do: assert(PokemonDamageCalculator.calculate_damage(p1, p2, dmg, dfe) == sol)

  describe "Sample tests" do
    test "Tests" do
      do_test({:fire, :water, 100, 100}, 25)
      do_test({:grass, :water, 100, 100}, 100)
      do_test({:electric, :fire, 100, 100}, 50)
      do_test({:grass, :electric, 57, 19}, 150)
      do_test({:grass, :water, 40, 40}, 100)
      do_test({:grass, :fire, 35, 5}, 175)
      do_test({:fire, :electric, 10, 2}, 250)
    end
  end
end
