defmodule BouncingBallTest do
  use ExUnit.Case
  doctest BouncingBall

  defp testing(numtest, h, bounce, window, ans) do
    IO.puts("Test #{numtest}")
    assert BouncingBall.bouncing_ball(h, bounce, window) == ans
  end

  test "bouncing_ball" do
    testing(1, 3, 0.66, 1.5, 3)
    testing(2, 30, 0.66, 1.5, 15)
  end
end
