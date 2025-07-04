defmodule ThueMorseSequence do
  @moduledoc false

  def thue(1), do: "0"

  def thue(n) do
    {a, b} = n |> :math.log2() |> ceil |> morse
    String.slice(a <> b, 0, n)
  end

  def morse(1), do: {"0", "1"}

  def morse(n) do
    {a, b} = morse(n - 1)
    {a <> b, b <> a}
  end
end
