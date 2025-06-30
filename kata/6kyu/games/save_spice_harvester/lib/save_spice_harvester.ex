defmodule SaveSpiceHarvester do
  @moduledoc false
  @rescue_miners "Damn the spice! I'll rescue the miners!"
  @rescue_harvester "The spice must flow! Rescue the harvester!"

  def harvester_rescue(
        harvester: [x_harvester, y_harvester],
        worm: worm,
        carryall: carryall
      ) do
    time = fn [[x, y], v] -> :math.sqrt((x - x_harvester) ** 2 + (y - y_harvester) ** 2) / v end

    if time.(worm) > time.(carryall) + 1, do: @rescue_harvester, else: @rescue_miners
  end
end
