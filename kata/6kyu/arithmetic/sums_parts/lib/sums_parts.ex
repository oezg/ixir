defmodule SumsParts do
  @moduledoc false

  @spec parts_sums([integer()]) :: [integer()]
  def parts_sums(integers) do
    Enum.reduce(integers, [Enum.sum(integers)], fn
      integer, acc ->
        [hd(acc) - integer | acc]
    end)
    |> Enum.reverse()
  end
end
