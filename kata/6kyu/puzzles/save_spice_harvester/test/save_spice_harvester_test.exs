defmodule SaveSpiceHarvesterTest do
  use ExUnit.Case
  doctest SaveSpiceHarvester

  test "Basic Tests -- Initial Worm Sightings" do
    example_tests = [
      [harvester: [345, 600], worm: [[200, 100], 25], carryall: [[350, 200], 32]],
      [harvester: [200, 400], worm: [[200, 0], 40], carryall: [[500, 100], 45]],
      [harvester: [850, 125], worm: [[80, 650], 20], carryall: [[80, 600], 20]],
      [harvester: [0, 320], worm: [[250, 680], 42], carryall: [[550, 790], 58]],
      [harvester: [0, 0], worm: [[0, 600], 50], carryall: [[0, 880], 80]]
    ]

    y = "The spice must flow! Rescue the harvester!"
    n = "Damn the spice! I'll rescue the miners!"
    example_solutions = [y, n, y, n, n]

    for {z, sol} <- Enum.zip(example_tests, example_solutions) do
      assert SaveSpiceHarvester.harvester_rescue(z) == sol
    end
  end
end
