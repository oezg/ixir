defmodule DivideAndConquer do
  @moduledoc false

  def div_con(x) do
    Enum.reduce(x, 0, fn
      n, acc when is_integer(n) -> acc + n
      n, acc -> acc - String.to_integer(n)
    end)
  end
end
