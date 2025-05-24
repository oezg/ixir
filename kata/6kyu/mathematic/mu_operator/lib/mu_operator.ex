defmodule MuOperator do
  @moduledoc false

  @spec operator(integer(), 0 | 1 | 2 | 3 | 4, integer()) :: integer()
  def operator(_a, 0, b), do: 1 + b
  def operator(a, 1, b), do: a + b
  def operator(a, 2, b), do: a * b
  def operator(a, 3, b), do: a ** b
  def operator(_a, 4, 0), do: 1
  def operator(a, 4, b), do: a ** operator(a, 4, b - 1)
end
