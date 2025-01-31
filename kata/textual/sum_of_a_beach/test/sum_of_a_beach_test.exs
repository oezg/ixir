defmodule SumOfABeachTest do
  use ExUnit.Case
  doctest SumOfABeach

  import SumOfABeach, only: [sum_of_a_beach: 1]

  test "Sample tests" do
    assert sum_of_a_beach("SanD") == 1
    assert sum_of_a_beach("sunshine") == 1
    assert sum_of_a_beach("sunsunsunsun") == 4
    assert sum_of_a_beach("123FISH321") == 1
  end
end
