defmodule SuperCoordinateSums do
  @moduledoc false

  def super_sum(d, n), do: div(d * (n - 1) * n ** d, 2)
end
