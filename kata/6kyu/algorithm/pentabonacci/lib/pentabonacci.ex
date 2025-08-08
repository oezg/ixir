defmodule Pentabonacci do
  @moduledoc false
  require Integer

  def pentafib(0), do: 0
  def pentafib(1), do: 1
  def pentafib(2), do: 1
  def pentafib(3), do: 2
  def pentafib(4), do: 4

  def pentafib(n) do
    1..5
    |> Enum.map(&pentafib(n - &1))
    |> Enum.sum()
  end

  def count_odd_pentaFib(n) do
    div(n, 6) * 2 + min(2, rem(n, 6)) - 1
  end
end
