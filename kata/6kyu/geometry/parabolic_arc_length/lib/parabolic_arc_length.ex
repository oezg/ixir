defmodule ParabolicArcLength do
  @moduledoc false
  def len_curve(n) do
    for i <- 0..(n - 1) do
      :math.sqrt(n * n + 4 * i * i + 4 * i + 1) / (n * n)
    end
    |> Enum.sum()
  end
end
