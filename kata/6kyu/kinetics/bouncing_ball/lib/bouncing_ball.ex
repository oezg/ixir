defmodule BouncingBall do
  @moduledoc false

  def bouncing_ball(height, bounce, window)
      when height <= 0 or bounce <= 0 or bounce >= 1 or window >= height,
      do: -1

  def bouncing_ball(height, bounce, window),
    do: 2 + bouncing_ball(height * bounce, bounce, window)
end
