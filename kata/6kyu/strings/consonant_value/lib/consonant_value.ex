defmodule ConsonantValue do
  @moduledoc """
  Given a lowercase string that has alphabetic characters only and
  no spaces, return the highest value of consonant substrings.
  """

  def solve(s) do
    String.split(s, ~r/[aeiou]/, trim: true)
    |> Enum.map(fn str -> str |> to_charlist |> Enum.map(&(&1 + 1 - ?a)) |> Enum.sum() end)
    |> Enum.max()
  end
end
