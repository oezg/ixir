defmodule CornerCircle do
  @moduledoc false

  def corner_circle(r) do
    round(r * (3 - 2 * :math.sqrt(2)) * 100) / 100
  end
end
