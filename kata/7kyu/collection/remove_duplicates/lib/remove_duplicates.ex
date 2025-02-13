defmodule RemoveDuplicates do
  @moduledoc false

  def solve(list) do
    list |> Enum.reverse() |> Enum.uniq() |> Enum.reverse()
  end
end
