defmodule BallUpwards do
  @moduledoc false

  @doc """
  Given v0 (in km per hour), return the time in tenth of second of the maximum height.
  """
  def max_ball(v0) do
    round(v0 * 25 / 9 / 9.81)
  end
end
