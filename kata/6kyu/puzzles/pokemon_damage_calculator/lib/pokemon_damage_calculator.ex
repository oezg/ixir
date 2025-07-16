defmodule PokemonDamageCalculator do
  @moduledoc false
  @effectiveness %{
    fire: [grass: 2, electric: 1, water: 0.5],
    water: [fire: 2, grass: 0.5, electric: 0.5],
    grass: [water: 2, electric: 1, fire: 0.5],
    electric: [water: 2, grass: 1, fire: 1]
  }

  def calculate_damage(your_type, opponent_type, attack, defense) do
    damage(attack, defense, effectiveness(your_type, opponent_type))
  end

  def effectiveness(your_type, opponent_type) do
    if your_type == opponent_type do
      0.5
    else
      Keyword.fetch!(@effectiveness[your_type], opponent_type)
    end
  end

  def damage(attack, defense, effectiveness) do
    attack / defense * effectiveness * 50
  end
end
