defmodule SolomonsQuestTemporalCrystal do
  @moduledoc false

  @spec solomons_quest([{integer(), 0 | 1 | 2 | 3, integer()}]) :: {integer(), integer()}
  def solomons_quest(ar) do
    Enum.reduce(ar, {1, {0, 0}}, &advance/2)
    |> elem(1)
  end

  @spec advance({integer(), 0 | 1 | 2 | 3, integer()}, {pos_integer(), {integer(), integer()}}) ::
          {pos_integer(), {integer(), integer()}}
  def advance({level_shift, direction, distance}, {level, {x, y}}) when level > 0 do
    level = Bitwise.bsl(level, level_shift)
    {level, move(x, y, direction, distance * level)}
  end

  @spec move(integer(), integer(), 0 | 1 | 2 | 3, integer()) :: {integer(), integer()}
  def move(x, y, 0, distance), do: {x, y + distance}
  def move(x, y, 1, distance), do: {x + distance, y}
  def move(x, y, 2, distance), do: {x, y - distance}
  def move(x, y, 3, distance), do: {x - distance, y}
end
