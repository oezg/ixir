defmodule SolomonsQuestTemporalCrystalTest do
  use ExUnit.Case
  doctest SolomonsQuestTemporalCrystal

  def run_test(r, sol) do
    user = SolomonsQuestTemporalCrystal.solomons_quest(r)

    assert user == sol,
           "Input: #{inspect(r)}\nExpected: #{inspect(user)}\nActual: #{inspect(sol)}"
  end

  test "Basic tests" do
    run_test(
      [
        {1, 3, 5},
        {2, 0, 10},
        {-3, 1, 4},
        {4, 2, 4},
        {1, 1, 5},
        {-3, 0, 12},
        {2, 1, 12},
        {-2, 2, 6}
      ],
      {346, 40}
    )

    run_test(
      [
        {4, 0, 8},
        {2, 1, 2},
        {1, 0, 5},
        {-3, 3, 16},
        {2, 2, 2},
        {-1, 1, 7},
        {0, 0, 5},
        {-4, 3, 14}
      ],
      {68, 800}
    )

    run_test(
      [
        {1, 1, 20},
        {1, 2, 30},
        {1, 3, 8},
        {1, 0, 2},
        {1, 1, 6},
        {1, 2, 4},
        {1, 3, 6},
        {-7, 0, 100}
      ],
      {-600, -244}
    )

    run_test(
      [
        {2, 2, 100},
        {3, 1, 25},
        {4, 0, 8},
        {-6, 3, 25},
        {-1, 2, 80},
        {8, 0, 12},
        {-10, 3, 220},
        {0, 1, 150}
      ],
      {530, 15664}
    )

    run_test(
      [
        {3, 2, 80},
        {1, 1, 25},
        {6, 0, 8},
        {-5, 3, 50},
        {1, 2, 100},
        {4, 0, 9},
        {-8, 3, 260},
        {0, 1, 90}
      ],
      {-1880, 10368}
    )
  end
end
