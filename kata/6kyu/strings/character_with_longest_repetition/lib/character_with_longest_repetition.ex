defmodule CharacterWithLongestRepetition do
  @moduledoc false

  @spec longest_repetition(binary()) :: {binary(), integer()}
  def longest_repetition(string) do
    String.codepoints(string)
    |> Enum.chunk_by(&Function.identity/1)
    |> Enum.map(fn list -> {hd(list), length(list)} end)
    |> Enum.max_by(fn {_, x} -> x end, fn -> {"", 0} end)
  end
end
