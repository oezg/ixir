defmodule AlternateCapitalize do
  @moduledoc false

  def alternate_capitalize(s, even \\ 0) do
    s
    |> String.graphemes()
    |> Enum.with_index()
    |> Enum.map(fn {c, i} ->
      if rem(i, 2) == even, do: String.upcase(c), else: c
    end)
    |> Enum.join()
  end

  def capitalize(s) do
    [0, 1] |> Enum.map(&alternate_capitalize(s, &1))
  end
end
