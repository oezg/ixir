defmodule HowMuch do
  @moduledoc false

  def howmuch(m, n) do
    Enum.filter(m..n, &(rem(&1, 9) == 1 and rem(&1, 7) == 2))
    |> Enum.map(&["M: #{&1}", "B: #{div(&1, 7)}", "C: #{div(&1, 9)}"])
  end
end
