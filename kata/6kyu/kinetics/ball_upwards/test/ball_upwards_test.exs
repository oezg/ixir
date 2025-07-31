defmodule BallUpwardsTest do
  use ExUnit.Case
  doctest BallUpwards

  defp testing(numtest, v0, ans) do
    IO.puts("Test #{numtest}")
    assert BallUpwards.max_ball(v0) == ans
  end

  test "max_ball" do
    testing(1, 37, 10)
    testing(2, 45, 13)
    testing(3, 99, 28)
    testing(4, 85, 24)
  end
end
