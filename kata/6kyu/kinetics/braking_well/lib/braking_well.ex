defmodule BrakingWell do
  @moduledoc false

  @g 9.81

  def dist(v, mu) do
    mps = v * 5 / 18
    mps * (1 + mps / (2 * mu * @g))
  end

  def speed(d, mu) do
    mug = mu * @g
    mps = :math.sqrt(mug * (mug + 2 * d)) - mug
    mps * 18 / 5
  end
end
