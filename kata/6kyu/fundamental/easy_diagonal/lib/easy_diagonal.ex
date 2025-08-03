defmodule EasyDiagonal do
  @moduledoc false
  def diagonal(n, p), do: Enum.reduce(1..(p + 1), 1, &div(&2 * (n - p + &1), &1))
end
